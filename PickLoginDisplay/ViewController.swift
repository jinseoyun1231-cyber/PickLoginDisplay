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
        loginEmailTextField1.layer.cornerRadius = 7
        //이메일 입력창 설정
        
        let emailTextField1 = NSAttributedString(
            string: "학교 이메일을 입력해주세요.",
            attributes: [.foregroundColor: UIColor(red: 0x8c/255, green: 0x8a/255, blue: 0x8a/255, alpha: 1)])
        let emailTextField2 = NSAttributedString(
            string: "                        ")
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
        loginPasswordTextField1.layer.cornerRadius = 7
        loginPasswordTextField1.attributedPlaceholder = NSAttributedString(
            string: "비밀번호를 입력해주세요.",
            attributes: [.foregroundColor: UIColor(red: 0x8c/255, green: 0x8a/255, blue: 0x8a/255, alpha: 1)])
        //비밀번호 텍스트필드 설정
        
        let passwordPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 0))
        loginPasswordTextField1.leftView = passwordPaddingView
        loginPasswordTextField1.leftViewMode = .always
        //비밀번호 전에 공백.
        
        view.addSubview(pickLogintext1)
        view.addSubview(pickLogintext2)
        view.addSubview(loginEmail)
        view.addSubview(loginEmailTextField1)
        view.addSubview(loginPassword)
        view.addSubview(loginPasswordTextField1)
        //화면에 띄우기
        
        pickLogintext1.translatesAutoresizingMaskIntoConstraints = false
        pickLogintext2.translatesAutoresizingMaskIntoConstraints = false
        loginEmail.translatesAutoresizingMaskIntoConstraints = false
        loginEmailTextField1.translatesAutoresizingMaskIntoConstraints = false
        loginPassword.translatesAutoresizingMaskIntoConstraints = false
        loginPasswordTextField1.translatesAutoresizingMaskIntoConstraints = false
        
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
        ])
        
        
        // Do any additional setup after loading the view.
    }
}

