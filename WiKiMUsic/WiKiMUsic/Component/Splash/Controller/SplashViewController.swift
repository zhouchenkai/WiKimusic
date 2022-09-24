//
//  SplashViewController.swift
//  WiKiMUsic
//  启动界面
//  Created by 周晨凯 on 2022/9/23.
//

import UIKit
//MARK:  自动化布局
import SnapKit

class SplashViewController: UIViewController {
    var container:UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // MARK: - 控件
        //添加一个根容器
        container = UIView()
        view.addSubview(container)
        
        //logo
        let logo = UIImageView()
        logo.image = UIImage(named: "logo")
        container.addSubview(logo)
        //协议
        let agreement = UILabel()
        agreement.text = "登录即表示你同意《用户协议》和《隐私政策》"
        agreement.textColor = .gray
        agreement.font = UIFont.systemFont(ofSize: 12)
        container.addSubview(agreement)
        //MARK: - 手机号登陆按钮
        container.addSubview(phoneLogin)
        //MARK: - 登陆按钮
        container.addSubview(primaryButton)
        // MARK: - 添加约束
        container.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(16)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(-16)
            make.trailing.equalTo(self.view.safeAreaLayoutGuide.snp.trailing).offset(-16)
            make.leading.equalTo(self.view.safeAreaLayoutGuide.snp.leading).offset(16)
        }
        
        logo.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(100)
            make.top.equalTo(100)
            make.centerX.equalToSuperview()
        }
        phoneLogin.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(42)
            make.bottom.equalTo(primaryButton.snp.top).offset(-20)
        }
        primaryButton.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(42)
            make.bottom.equalTo(agreement.snp.top).offset(-20)
        }
        agreement.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        
    }
    //MARK: -点击事件
    @objc func btnClick(_ sender:UIButton){
        self.navigationController?.pushViewController(SettingVC(), animated: true)
        print("click")
    }
    
    //懒加载
    lazy var phoneLogin: UIButton = {
        let r = UIButton()
        r.setTitle("手机号登陆", for: .normal)
        r.backgroundColor = .red
        r.layer.cornerRadius = 5
        r.setTitleColor(.white, for: .normal)
        r.setTitleColor(.gray, for: .highlighted)
        r.addTarget(self, action: #selector(btnClick(_: )), for: .touchUpInside)
        return r
    }()
    
    lazy var primaryButton: UIButton = {
        let r = UIButton()
        r.setTitle("登陆", for: .normal)
        r.backgroundColor = .white
        r.layer.cornerRadius = 5
        r.layer.borderColor = UIColor.red.cgColor
        r.layer.borderWidth = 1
        r.setTitleColor(.red, for: .normal)
        r.setTitleColor(.gray, for: .highlighted)
        return r
    }()
    

}
