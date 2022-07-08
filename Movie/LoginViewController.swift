//
//  LoginViewController.swift
//  Movie
//
//  Created by 신승아 on 2022/07/06.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var textfield1: UITextField!
    @IBOutlet weak var textfield2: UITextField!
    @IBOutlet weak var textfield3: UITextField!
    @IBOutlet weak var textfield4: UITextField!
    @IBOutlet weak var textfield5: UITextField!
    @IBOutlet weak var switchButton: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButtonDesign()
        signupButtonDesign()
        textfieldDesign(textfield1, placeholdername: "아이디")
        textfieldDesign(textfield2, placeholdername: "비밀번호")
        textfieldDesign(textfield3, placeholdername: "위치")
        textfieldDesign(textfield4, placeholdername: "이름")
        textfieldDesign(textfield5, placeholdername: "추천인코드")
        switchButtonDesign()
    }
    
    // 텍스트필드 디자인
    func textfieldDesign(_ textfieldName: UITextField, placeholdername: String) {
        textfieldName.backgroundColor = .gray
        textfieldName.textColor = .white
        textfieldName.textAlignment = .center
        textfieldName.attributedPlaceholder = NSAttributedString(string: placeholdername, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
    }
    
    
    // 로그인 버튼 디자인 -> 다음 씬과 연결
    func loginButtonDesign() {
        loginButton.layer.cornerRadius = 7
        loginButton.backgroundColor = .white
        loginButton.tintColor = .red
        loginButton.setTitle("로그인", for: .normal)
    }
    
    // 회원가입 버튼 디자인
    func signupButtonDesign(){
        signupButton.layer.cornerRadius = 7
        signupButton.backgroundColor = .white
        signupButton.tintColor = .black
        signupButton.setTitle("회원가입", for: .normal)
    }
    
    
    func switchButtonDesign() {
        switchButton.onTintColor = .red
    }
    // 탭제스쳐 클릭하면 키보드 내려가는 동작
    
    @IBAction func tapgestureclicked(_ sender: Any) {
        view.endEditing(true)
    }
    
    // 회원가입 클릭하면 키보드 내려가는 동작
    @IBAction func signupButtonClicked(_ sender: UIButton) {
        view.endEditing(true)
    }
    
}
