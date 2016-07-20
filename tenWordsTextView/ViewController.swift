//
//  ViewController.swift
//  tenWordsTextView
//
//  Created by EricYang on 2016/7/20.
//  Copyright © 2016年 EricYang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var textV: UITextView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet weak var imageview: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.textV.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        
        if text == ""{
            if let originalTextLength = textView.text?.characters.count{
                let TextLength = originalTextLength-1
                if TextLength > 10{
                    label.text = "text length: 10"
                    return false
                }
                else{
                    if originalTextLength == 0{
                        label.text = "text length: 0"
                        return false
                    }
                    else{
                        label.text = "text length: "+String(TextLength)
                        return true

                    }
                }
            }
            else{
                label.text = "text length: 0"
                return false
            }
        }
        else{
            if let originalTextLength = textView.text?.characters.count{
                let TextLength = originalTextLength+1
                if TextLength > 10{
                    label.text = "text length: 10"
                    return false
                }
                else{
                    label.text = "text length: "+String(TextLength)
                    if TextLength == 10{
                        imageview.image = UIImage(named: "CaoZhi")
                        let line = textView.text!+text
                        label2.text = "古有曹植七步成詩～"
                        label3.text = "今有十字成曲「 \(line) ]"
                        
                    }
                    
                    
                   
                    return true
                }
            }
            else{
                let TextLength = 1
                label.text = "text length: "+String(TextLength)
                return true
                
            }
            
        }
        
    }

    

}

