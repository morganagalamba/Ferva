//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport



class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label1 = UILabel()
    
        label1.frame = CGRect(x: 50, y: 200, width: 250, height: 20)
        label1.text = "Olá, que legal ter você aqui!"
        label1.textColor = .black
        
        let label2 = UILabel()
        label2.frame = CGRect(x: 50, y: 220, width: 250, height: 20)
        label2.text = "Qual o seu nome?"
        label2.textColor = .black
        
        let okButton = UIButton()
        okButton.frame = CGRect(x: 260, y: 250, width: 50, height: 25)
        okButton.setTitle("ok", for: .normal)
        okButton.setTitleColor(.black, for: .normal)
        okButton.backgroundColor = .gray
        
        let textField = UITextField()
        textField.frame = CGRect(x: 50, y: 250, width: 200, height: 25)
        textField.backgroundColor = .black
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(okButton)
        view.addSubview(textField)
        self.view = view
    }
}

let vc = MyViewController(screenType: .ipadPro12_9, isPortrait: false)
PlaygroundPage.current.liveView = vc.scale(to: 0.4)

