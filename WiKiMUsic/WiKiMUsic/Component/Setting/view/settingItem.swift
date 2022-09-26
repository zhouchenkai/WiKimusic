//
//  settingItem.swift
//  WiKiMUsic
//
//  Created by 周晨凯 on 2022/9/24.
//

import UIKit
import TangramKit

class settingItem: TGRelativeLayout {

    init() {
        super.init(frame: .zero)
        innerInit()
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        innerInit()
    }
    
    func innerInit() {
        backgroundColor = .white
        addSubview(iconView)
        addSubview(titleView)
        addSubview(moreIconView)
    }
    ///当加入父视图时显示 进行内部约束
    override func didMoveToWindow() {
        super.didMoveToSuperview()
        iconView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16)
            make.width.height.equalTo(20)
            make.centerY.equalToSuperview()
        }
        
        moreIconView.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-16)
            make.width.height.equalTo(20)
            make.centerY.equalToSuperview()
        }
        
        titleView.snp.makeConstraints { make in
            make.leading.equalTo(iconView.snp.trailing).offset(16)
            make.centerY.equalToSuperview()
        }
    }
    ///左侧图标
    lazy var iconView: UIImageView = {
        let r = UIImageView()
        r.image = UIImage(named: "Setting")
        r.tg_width.equal(20)
        r.tg_height.equal(20)
        r.tg_centerY.equal(0)
        r.tg_leading.equal(16)
        return r
    }()
    ///标题
    lazy var titleView: UILabel = {
        let r = UILabel()
        r.text = "标题"
        r.tg_width.equal(.wrap)
        r.tg_height.equal(.wrap)
        r.tg_centerY.equal(0)
        r.tg_leading.equal(iconView.tg_trailing).offset(16)
        return r
    }()
    ///右侧图标
    lazy var moreIconView: UIImageView = {
        let r = UIImageView()
        r.image = UIImage(named: "Arrow")
        r.tg_width.equal(20)
        r.tg_height.equal(20)
        r.tg_centerY.equal(0)
        r.tg_trailing.equal(16)
        return r
    }()
}
