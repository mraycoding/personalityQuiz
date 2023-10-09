//
//  ResultsViewController.swift
//  persolalityQuiz2
//
//  Created by Max Ray on 10/7/23.
//

import UIKit

class ResultsViewController: UIViewController {

    
    var responses: [Answer]
    

    init?(coder: NSCoder, responses: [Answer]) {
        self.responses = responses
        super.init(coder: coder)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
// this is my problem
    

    
    func calculatePersonalityResult() {
        let frequencyOfAnswers = responses.reduce(into: [:]) {
            (counts, answer) in
            counts[answer.type, default: 0] += 1
        }
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by: { ( pair1, pair2 ) in
            return pair1.value > pair2.value
        })
        let mostCommonAnswer = frequencyOfAnswers.sorted{ $0.1 > $1.1 }.first!.key
        
        resultAnswerLabel.text = "You love \(mostCommonAnswer.rawValue)! "
        resultDefinitionLabel.text = mostCommonAnswer.definition
    }
    
    @IBOutlet var resultAnswerLabel: UILabel!
    @IBOutlet var resultDefinitionLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
calculatePersonalityResult()
        navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
