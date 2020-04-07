//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport



class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .myWhite

        let label1 = UILabel()
        label1.frame = CGRect(x: 260, y: 210, width: 250, height: 20)
        label1.text = "Olá, que legal ter você aqui!"
        label1.textColor = .black
        
        let label2 = UILabel()
        label2.frame = CGRect(x: 260, y: 230, width: 250, height: 20)
        label2.text = "Qual o seu nome?"
        label2.textColor = .black
        
        let okButton = UIButton()
        okButton.frame = CGRect(x: 470, y: 290, width: 50, height: 25)
        okButton.setTitle("ok", for: .normal)
        okButton.setTitleColor(.white, for: .normal)
        okButton.backgroundColor = .myRed
        okButton.layer.masksToBounds = true
        okButton.layer.cornerRadius = 5
        okButton.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        
        let textField = UITextField()
        textField.frame = CGRect(x: 260, y: 290, width: 200, height: 25)
        textField.backgroundColor = .white
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 2
        
        let baloom = UIImage(named: "Group 5" )
        let baloomImageView = UIImageView(image: baloom)
        baloomImageView.frame = CGRect(x: 200, y: 180, width: 400, height: 100)
        
        view.addSubview(baloomImageView)
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(okButton)
        view.addSubview(textField)
        self.view = view
    }
    
    @objc func tapButton(){
        print("apertou ok")
        present(MainViewController,animated: true,completion: nil)
    }
}

class mainViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .myWhite
        
        let groundBox = UIView()
        groundBox.frame = CGRect(x: 0, y: 350, width: 800, height: 300)
        groundBox.backgroundColor = .myGround
        
        let instructionsBox = UIView()
        instructionsBox.frame = CGRect(x: -10, y: 150, width: 210, height: 300)
        instructionsBox.backgroundColor = .myYellow
        instructionsBox.layer.masksToBounds = true
        instructionsBox.layer.cornerRadius = 10
        
        let menuButton = UIButton()
        menuButton.frame = CGRect(x: 10, y: 10, width: 30, height:30 )
        menuButton.backgroundColor = .myRed
        menuButton.layer.masksToBounds = true
        menuButton.layer.cornerRadius = 5
        
        let actionBox = UILabel()
        actionBox.frame = CGRect(x: 350, y:15 , width: 100, height: 20)
        actionBox.backgroundColor = .myYellow
        actionBox.text = "Pular"
        actionBox.textAlignment = .center
        
        let danceButton = UIButton()
        danceButton.frame = CGRect(x: 325, y: 450, width: 150, height: 30)
        danceButton.backgroundColor = .myRed
        danceButton.layer.masksToBounds = true
        danceButton.layer.cornerRadius = 5
        
        let hardButton = UIButton()
        hardButton.frame = CGRect(x: 240, y: 500, width: 150, height: 30)
        hardButton.backgroundColor = .myRed
        hardButton.layer.masksToBounds = true
        hardButton.layer.cornerRadius = 5
        
        let gotItButton = UIButton()
        gotItButton.frame = CGRect(x: 410, y: 500, width: 150, height: 30)
        gotItButton.backgroundColor = .myRed
        gotItButton.layer.masksToBounds = true
        gotItButton.layer.cornerRadius = 5
        
        view.addSubview(menuButton)
        view.addSubview(actionBox)
        view.addSubview(groundBox)
        view.addSubview(danceButton)
        view.addSubview(instructionsBox)
        view.addSubview(hardButton)
        view.addSubview(gotItButton)
        
        self.view = view
    }
}

let MainViewController = mainViewController()

let vc = MyViewController()

vc.preferredContentSize = CGSize(width: 800, height: 600)
MainViewController.preferredContentSize = CGSize(width: 800, height: 600)
MainViewController.modalPresentationStyle = .fullScreen

PlaygroundPage.current.needsIndefiniteExecution = true // Sets up the constant running of the playground so that the location can update properly

PlaygroundPage.current.liveView = vc


