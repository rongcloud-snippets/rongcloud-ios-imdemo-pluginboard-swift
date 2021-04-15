//
//  RCSConversationViewController.swift
//  rongcloud-ios-imdemo-import-swift
//
//  Created by Jue on 2020/11/3.
//  Copyright © 2020 RC. All rights reserved.
//

import UIKit

class RCSConversationViewController: RCConversationViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        addSendFile()
    }
    
    //在点击输入框 ➕ 按钮弹出的功能版中添加“文件”功能
    func addSendFile() {
        let imageFile: UIImage? = RCKitUtility.imageNamed("actionbar_file_icon", ofBundle: "RongCloud.bundle")
        let pluginBoardView = chatSessionInputBarControl.pluginBoardView
        pluginBoardView?.insertItem(with: imageFile, title: NSLocalizedString("File", tableName: "RongCloudKit", bundle: Bundle.main, value: "", comment: ""), at: 3, tag: Int(PLUGIN_BOARD_ITEM_FILE_TAG))
    }

}
