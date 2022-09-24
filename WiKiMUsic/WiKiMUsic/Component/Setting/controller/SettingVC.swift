//
//  SettingVC.swift
//  WiKiMUsic
//
//  Created by 周晨凯 on 2022/9/24.
//

import UIKit

class SettingVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "设置"
        view.backgroundColor = .systemGroupedBackground
        view.addSubview(firstItem)
        view.addSubview(secondItem)
        firstItem.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(55)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(16)
        }
        
        secondItem.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(55)
            make.top.equalTo(firstItem.snp.bottom).offset(1)
        }
    }
    @objc func onSettingClick(recognizer:UITapGestureRecognizer) {
        print("onSettingClick")
    }

    lazy var firstItem: settingItem = {
        let r = settingItem()
        r.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onSettingClick(recognizer:))))
        return r
    }()
    lazy var secondItem: settingItem = {
        let r = settingItem()
        r.titleView.text = "gagaga"
        return r
    }()

}
