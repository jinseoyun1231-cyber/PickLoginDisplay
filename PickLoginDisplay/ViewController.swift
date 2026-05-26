//
//  ViewController.swift
//  PickLoginDisplay
//
//  Created by Seoyun Jin on 5/12/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let pickLogintext1 = UILabel()
        let AttributedString1 = NSMutableAttributedString(string: "PiCK에 로그인 하기")
        let myRange = NSRange(location: 0, length: 4)
        AttributedString1.addAttribute(.foregroundColor, value: UIColor(red: 0x96/255, green: 0x50/255, blue: 0xFA/255, alpha: 1), range: myRange)
        AttributedString1.addAttribute(.font, value: UIFont.boldSystemFont(ofSize: 34), range: myRange)
        pickLogintext1.attributedText = AttributedString1
        pickLogintext1.font = UIFont.boldSystemFont(ofSize: 34)
        //로그인 텍스트, PiCK 색 바뀜.
        
        let pickLogintext2 = UILabel()
        pickLogintext2.text = "PiCK 계정으로 로그인 해주세요."
        pickLogintext2.textColor = .gray
        pickLogintext2.font = UIFont.systemFont(ofSize: 15)
        //로그인 텍스트
        
        let loginEmail = UILabel()
        loginEmail.text = "이메일"
        loginEmail.textColor = .black
        loginEmail.font = UIFont.systemFont(ofSize: 17)
        //이메일 텍스트
        
        let loginEmailTextField1 = UITextField()
        loginEmailTextField1.textColor = .black
        loginEmailTextField1.font = UIFont.systemFont(ofSize: 13)
        loginEmailTextField1.borderStyle = .none
        loginEmailTextField1.backgroundColor = UIColor(red: 0xF1/255, green: 0xF1/255, blue: 0xF2/255, alpha: 1)
        loginEmailTextField1.layer.cornerRadius = 8
        //이메일 입력창 설정
        
        let emailTextField1 = NSAttributedString(
            string: "학교 이메일을 입력해주세요.",
            attributes: [.foregroundColor: UIColor(red: 0x8c/255, green: 0x8a/255, blue: 0x8a/255, alpha: 1)])
        let emailTextField2 = NSAttributedString(
            string: "                           ")
        let emailTextField3 = NSMutableAttributedString(
            string: "@dsm.hs.kr",
            attributes: [.foregroundColor: UIColor(red: 0x8c/255, green: 0x8a/255, blue: 0x8a/255, alpha: 1)])
        
        let emailTextField = NSMutableAttributedString()
        emailTextField.append(emailTextField1)
        emailTextField.append(emailTextField2)
        emailTextField.append(emailTextField3)
        
        loginEmailTextField1.attributedPlaceholder = emailTextField
        // 중간에 공백 넣기
            
        let emailPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 0))
        loginEmailTextField1.leftView = emailPaddingView
        loginEmailTextField1.leftViewMode = .always
        //처음에 시작 하기 전에 공백
        
        let loginPassword = UILabel()
        loginPassword.text = "비밀번호"
        loginPassword.textColor = .black
        loginPassword.font = UIFont.systemFont(ofSize: 17)
        //비밀번호 텍스트 설정
        
        let loginPasswordTextField1 = UITextField()
        loginPasswordTextField1.textColor = .black
        loginPasswordTextField1.font = UIFont.systemFont(ofSize: 13)
        loginPasswordTextField1.borderStyle = .none
        loginPasswordTextField1.backgroundColor = UIColor(red: 0xF1/255, green: 0xF1/255, blue: 0xF2/255, alpha: 1)
        loginPasswordTextField1.layer.cornerRadius = 8
        loginPasswordTextField1.isSecureTextEntry = true
        loginPasswordTextField1.attributedPlaceholder = NSAttributedString(
            string: "비밀번호를 입력해주세요.",
            attributes: [.foregroundColor: UIColor(red: 0x8c/255, green: 0x8a/255, blue: 0x8a/255, alpha: 1)])
        //비밀번호 텍스트필드 설정
        
        let passwordPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 0))
        loginPasswordTextField1.leftView = passwordPaddingView
        loginPasswordTextField1.leftViewMode = .always
        //비밀번호 전에 공백.
        
        let changePassword = UIButton(type: .system)
        changePassword.backgroundColor = .clear
        let changePassword1 = NSAttributedString(
            string: "비밀번호 변경",
            attributes: [
                .font: UIFont.boldSystemFont(ofSize: 14),
                .foregroundColor: UIColor(red: 0x96/255, green: 0x50/255, blue: 0xfa/255, alpha: 1),
                .underlineStyle: NSUnderlineStyle.single.rawValue
            ])
        changePassword.setAttributedTitle(changePassword1, for: .normal)
        //비밀번호 변경 버튼 설정
        
        let changePasswordText = UILabel()
        changePasswordText.text = "비밀번호를 잊어버리셨나요?"
        changePasswordText.textColor = .black
        changePasswordText.font = UIFont.boldSystemFont(ofSize: 14)
        changePasswordText.textColor = UIColor(red: 0x5c/255, green: 0x5a/255, blue: 0x60/255, alpha: 1)
        //비밀번호 변경 텍스트 설정
        
        let eyeClose = UIImageView()
        eyeClose.image = UIImage(named: "eye-close")
        eyeClose.contentMode = .scaleAspectFit
        eyeClose.tintColor = .black
        //눈감기 이미지
        
        let signupText = UILabel()
        signupText.text = "PiCK 계정이 없으신가요? "
        signupText.textColor = UIColor(red: 0x5c/255, green: 0x5a/255, blue: 0x60/255, alpha: 1)
        signupText.font = UIFont.boldSystemFont(ofSize: 14)
        //회원가입 텍스트
        
        let signupButton = UIButton(type: .system)
        signupButton.backgroundColor = .clear
        let signupButton1 = NSAttributedString(
            string: "회원가입",
            attributes: [
                .font: UIFont.boldSystemFont(ofSize: 14),
                .foregroundColor: UIColor(red: 0x96/255, green: 0x50/255, blue: 0xfa/255, alpha: 1),
                .underlineStyle: NSUnderlineStyle.single.rawValue
            ])
        signupButton.setAttributedTitle(signupButton1, for: .normal)
        //회원가입버튼
        
        let loginButton = UILabel()
        loginButton.backgroundColor = UIColor(red: 0xe0/255, green: 0xcb/255, blue: 0xfe/255, alpha: 1)
        loginButton.layer.cornerRadius = 8
        loginButton.clipsToBounds = true
        loginButton.textColor = .white
        loginButton.text = "로그인하기"
        loginButton.font = UIFont.boldSystemFont(ofSize: 16)
        loginButton.textAlignment = .center
        //로그인 버튼 설정
        
        
        view.addSubview(pickLogintext1)
        view.addSubview(pickLogintext2)
        view.addSubview(loginEmail)
        view.addSubview(loginEmailTextField1)
        view.addSubview(loginPassword)
        view.addSubview(loginPasswordTextField1)
        view.addSubview(changePassword)
        view.addSubview(changePasswordText)
        view.addSubview(eyeClose)
        view.addSubview(signupText)
        view.addSubview(signupButton)
        view.addSubview(loginButton)
        //화면에 띄우기
        
        pickLogintext1.translatesAutoresizingMaskIntoConstraints = false
        pickLogintext2.translatesAutoresizingMaskIntoConstraints = false
        loginEmail.translatesAutoresizingMaskIntoConstraints = false
        loginEmailTextField1.translatesAutoresizingMaskIntoConstraints = false
        loginPassword.translatesAutoresizingMaskIntoConstraints = false
        loginPasswordTextField1.translatesAutoresizingMaskIntoConstraints = false
        changePassword.translatesAutoresizingMaskIntoConstraints = false
        changePasswordText.translatesAutoresizingMaskIntoConstraints = false
        eyeClose.translatesAutoresizingMaskIntoConstraints = false
        signupText.translatesAutoresizingMaskIntoConstraints = false
        signupButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        //자동배치 끄기
        
        NSLayoutConstraint.activate([
            pickLogintext1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            pickLogintext1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            
            pickLogintext2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            pickLogintext2.topAnchor.constraint(equalTo: pickLogintext1.bottomAnchor, constant: 10),
            
            loginEmail.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            loginEmail.topAnchor.constraint(equalTo: pickLogintext2.bottomAnchor, constant: 50),
            
            loginEmailTextField1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            loginEmailTextField1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            loginEmailTextField1.topAnchor.constraint(equalTo: loginEmail.bottomAnchor, constant: 12),
            loginEmailTextField1.heightAnchor.constraint(equalToConstant: 40),
            
            loginPassword.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            loginPassword.topAnchor.constraint(equalTo: loginEmailTextField1.bottomAnchor, constant: 50),
            
            loginPasswordTextField1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            loginPasswordTextField1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            loginPasswordTextField1.topAnchor.constraint(equalTo: loginPassword.bottomAnchor, constant: 12),
            loginPasswordTextField1.heightAnchor.constraint(equalToConstant: 40),
            
            changePassword.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            changePassword.topAnchor.constraint(equalTo: loginPasswordTextField1.bottomAnchor, constant: 12),
            changePassword.heightAnchor.constraint(equalToConstant: 17),
            
            changePasswordText.topAnchor.constraint(equalTo: loginPasswordTextField1.bottomAnchor, constant: 12),
            changePasswordText.trailingAnchor.constraint(equalTo: changePassword.leadingAnchor, constant: -4),
            changePasswordText.heightAnchor.constraint(equalToConstant: 17),
            
            eyeClose.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            eyeClose.topAnchor.constraint(equalTo: loginPassword.bottomAnchor, constant: 22),
            eyeClose.heightAnchor.constraint(equalToConstant: 20),
            eyeClose.widthAnchor.constraint(equalToConstant: 20),
            
            signupText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            signupText.topAnchor.constraint(equalTo: changePasswordText.bottomAnchor, constant: 256),
            signupText.heightAnchor.constraint(equalToConstant: 17),
            
            signupButton.leadingAnchor.constraint(equalTo: signupText.trailingAnchor, constant: 4),
            signupButton.topAnchor.constraint(equalTo: changePasswordText.bottomAnchor, constant: 256),
            signupButton.heightAnchor.constraint(equalToConstant: 17),
            
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            loginButton.topAnchor.constraint(equalTo: signupText.bottomAnchor, constant: 12),
            loginButton.heightAnchor.constraint(equalToConstant: 47),
            
            
        ])
        //위치 지정
        
        // Do any additional setup after loading the view.
        
    }
}
