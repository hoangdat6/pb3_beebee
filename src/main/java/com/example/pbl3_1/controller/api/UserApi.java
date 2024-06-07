package com.example.pbl3_1.controller.api;

import com.example.pbl3_1.Util.SessionUtil;
import com.example.pbl3_1.entity.User;
import com.example.pbl3_1.service.UserService;
import com.example.pbl3_1.service.impl.UserServiceImpl;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Base64;
import java.util.List;
import java.util.Map;

@WebServlet(name = "userApi", urlPatterns = {"/api/userAvatar"})
public class UserApi extends HttpServlet {
    private final UserService userService = new UserServiceImpl();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");

        ObjectMapper mapper = new ObjectMapper();
        Map<String, String> srcs =  mapper.readValue(request.getReader(), Map.class);

        String root = getServletContext().getRealPath("/");
        root = root.replace("target" + File.separator +"PBL3_1-1.0-SNAPSHOT" + File.separator,
                "src" + File.separator + "main" + File.separator + "webapp" + File.separator );

        String rootPath = root + "USER_AVATAR"  + File.separator;

        String webappDirectoryRoot = getServletContext().getRealPath("/") + File.separator + "USER_AVATAR" + File.separator;

        User user = (User)SessionUtil.getInstance().getValue(request, "USERMODEL");
        String path = saveImages(rootPath, user.getId().toString(), List.of(srcs.get("source")));
        saveImages(webappDirectoryRoot, user.getId().toString(), List.of(srcs.get("source")));

        user.setAvatar(path);
        SessionUtil.getInstance().putValue(request, "USERMODEL", user);
        userService.updateAvatar(user.getId(), path);
    }


    String saveImages(String rootPath, String userId, List<String> imageStrings) throws IOException {
        StringBuilder images = new StringBuilder();
        String dir = "";
        String filename = "";
        for (int i = 0; i < imageStrings.size(); i++) {
            // Decode base64 string to byte array
            byte[] data1 = Base64.getDecoder().decode(imageStrings.get(i));

            dir = userId + "/";
            Path path = Paths.get(rootPath + "/" + dir);
            if(!Files.exists(path)){
                Files.createDirectories(path);
            }

            filename = userId + ".png";
            // Define path to save image
            Path pathImg = Paths.get(path + "/" + filename);

            // Write byte array to file
            Files.write(pathImg, data1);

            if(i == imageStrings.size() - 1)
                images.append("USER_AVATAR/").append(dir).append(filename);
            else
                images.append("USER_AVATAR/").append(dir).append(filename).append(",");
        }
        return images.toString();
    }
}
