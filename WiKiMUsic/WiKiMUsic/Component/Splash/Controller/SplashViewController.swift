//
//  SplashViewController.swift
//  WiKiMUsic
//  启动界面
//  Created by 周晨凯 on 2022/9/23.
//

import UIKit
//MARK:  自动化布局
import SnapKit
//MARK: TangramKit 布局
import TangramKit

class SplashViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // MARK: - 控件
        //添加一个根容器
        let container = TGRelativeLayout()
        container.tg_top.equal(TGLayoutPos.tg_safeAreaMargin).offset(16)
        container.tg_bottom.equal(TGLayoutPos.tg_safeAreaMargin).offset(16)
        container.tg_left.equal(TGLayoutPos.tg_safeAreaMargin).offset(16)
        container.tg_right.equal(TGLayoutPos.tg_safeAreaMargin).offset(16)
        view.addSubview(container)
        //logo
        let logo = UIImageView()
        logo.image = UIImage(named: "logo")
        logo.tg_width.equal(100)
        logo.tg_height.equal(100)
        logo.tg_top.equal(100)
        logo.tg_centerX.equal(0)
        container.addSubview(logo)
        //底部根容器
        let footercontainer = TGLinearLayout(.vert)
        footercontainer.tg_bottom.equal(0)
        footercontainer.tg_height.equal(.wrap)
        footercontainer.tg_width.equal(.fill)
        footercontainer.tg_space = 20
        footercontainer.tg_gravity = TGGravity.horz.center
        container.addSubview(footercontainer)
        
        //MARK: - 手机号登陆按钮
        footercontainer.addSubview(phoneLogin)
        //MARK: - 登陆按钮
        footercontainer.addSubview(primaryButton)
        //MARK: - 第三方登陆
        let otherloginconatiner = TGLinearLayout(.horz)
        otherloginconatiner.tg_width.equal(.fill)
        otherloginconatiner.tg_height.equal(.wrap)
        otherloginconatiner.tg_gravity = TGGravity.horz.among
        for _ in 0..<4{
            let loginButtom = UIButton(type: .custom)
            loginButtom.setImage(UIImage(named: "LoginQqSelected"), for: .normal)
            loginButtom.tg_width.equal(50)
            loginButtom.tg_height.equal(50)
            otherloginconatiner.addSubview(loginButtom)
        }
        footercontainer.addSubview(otherloginconatiner)
        //MARK: - 协议
        let agreement = UILabel()
        agreement.text = "登录即表示你同意《用户协议》和《隐私政策》"
        agreement.textColor = .gray
        agreement.font = UIFont.systemFont(ofSize: 12)
        agreement.tg_width.equal(.wrap)
        agreement.tg_height.equal(.wrap)
        footercontainer.addSubview(agreement)
        
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
        r.tg_width.equal(.fill)
        r.tg_height.equal(40)
        
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
        r.tg_width.equal(.fill)
        r.tg_height.equal(40)
        return r
    }()
    

}
