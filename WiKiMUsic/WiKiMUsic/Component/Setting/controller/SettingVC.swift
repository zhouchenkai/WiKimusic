//
//  SettingVC.swift
//  WiKiMUsic
//
//  Created by 周晨凯 on 2022/9/24.
//

import UIKit
import TangramKit

class SettingVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "设置"
        view.backgroundColor = .systemGroupedBackground
        let container = TGLinearLayout(.vert)
        container.tg_width.equal(.fill)
        container.tg_height.equal(.fill)
        container.tg_top.equal(TGLayoutPos.tg_safeAreaMargin).offset(16)
        container.tg_space = 1
        view.addSubview(container)
        
        container.addSubview(firstItem)
        container.addSubview(secondItem)

    }
    @objc func onSettingClick(recognizer:UITapGestureRecognizer) {
        print("onSettingClick")
    }

    lazy var firstItem: settingItem = {
        let r = settingItem()
        r.tg_height.equal(55)
        r.tg_width.equal(.fill)
        r.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onSettingClick(recognizer:))))
        return r
    }()
    lazy var secondItem: settingItem = {
        let r = settingItem()
        r.tg_height.equal(55)
        r.tg_width.equal(.fill)
        r.titleView.text = "gagaga"
        return r
    }()

}
