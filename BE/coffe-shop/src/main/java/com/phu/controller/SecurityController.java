package com.phu.controller;

import com.phu.config.JwtTokenUtil;
import com.phu.model.User;
import com.phu.payload.LoginResponse;
import com.phu.service.user.IUserService;
import com.phu.payload.LoginRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/public")
public class SecurityController {
    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private IUserService userService;

    @Autowired
    private JwtTokenUtil jwtTokenUtil;
    @PostMapping("/login")
    public ResponseEntity<?> authenticateUser(@Valid @RequestBody LoginRequest loginRequest) {
        Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(loginRequest.getUsername(), loginRequest.getPassword())
        );
        SecurityContextHolder.getContext().setAuthentication(authentication);


        String jwt = jwtTokenUtil.generateJwtToken(loginRequest.getUsername());
        User user = this.userService.findByUsername(loginRequest.getUsername());
        UserDetails myUserDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        List<String> roles = myUserDetails.getAuthorities().stream()
                .map(GrantedAuthority::getAuthority)
                .collect(Collectors.toList());
        String isLogin = "login";
        return ResponseEntity.ok(
                new LoginResponse(
                        jwt,
                        myUserDetails.getUsername(),
                        user.getId(),
                        roles,
                        isLogin));
    }

}
