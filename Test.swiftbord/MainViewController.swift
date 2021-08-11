//
//  ViewController.swift
//  Test.swiftbord
//
//  Created by 신지훈 on 2021/06/17.
//

import UIKit
import Lottie

class MainViewController: UIViewController {
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.text = "메인화면"
        label.font = UIFont.boldSystemFont(ofSize: 70)
            return label
    }()
    
    let animationView: AnimationView = {

        let animView = AnimationView(name: "62773-yoga-developer")
        animView.frame = CGRect(x:0 ,y:0 ,width: 400, height: 400)

        animView.contentMode = .scaleAspectFill
        return animView
    }()

////뷰가 생성되었을때
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        view.backgroundColor = .black
        view.addSubview(animationView)
        animationView.center = view.center

        view.addSubview(titleLabel)

       //애니메이션 실행
        animationView.play{ (finish)  in

            print("애니메이션이 끝난다.")
            self.view.backgroundColor = .white
            //애니메이션 삭제 부모뷰를 없앤다
            self.animationView.removeFromSuperview()

            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
            self.titleLabel.centerXAnchor.constraint(equalTo:  self.view.centerXAnchor).isActive = true
            self.titleLabel.centerYAnchor.constraint(equalTo:  self.view.centerYAnchor).isActive = true

        }
    }


}

