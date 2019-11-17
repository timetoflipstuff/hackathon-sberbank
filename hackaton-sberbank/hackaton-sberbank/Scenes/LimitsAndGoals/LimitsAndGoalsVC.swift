
import UIKit

final class LimitsAndGoalsVC : UIViewController {
        
        let tableView = UITableView()

        override func viewDidLoad() {
            super.viewDidLoad()
            
            view.backgroundColor = .white

            tableView.frame = view.frame
            tableView.delegate = self
            tableView.dataSource = self
            tableView.backgroundColor = .clear
            view.addSubview(tableView)
            
            tableView.register(GoalsBlockCell.self, forCellReuseIdentifier: GoalsBlockCell.id)
            tableView.register(GoalsHeader.self, forCellReuseIdentifier: GoalsHeader.id)
            tableView.register(LimitsBlockCell.self, forCellReuseIdentifier: LimitsBlockCell.id)
            tableView.register(LimitsHeader.self, forCellReuseIdentifier: LimitsHeader.id)
        }

    }

    extension LimitsAndGoalsVC: UITableViewDelegate {
        
    }

    extension LimitsAndGoalsVC: UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 4
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            var cell = UITableViewCell()
            switch indexPath.row {
            case 0:
                cell = tableView.dequeueReusableCell(withIdentifier: GoalsBlockCell.id, for: indexPath) as! GoalsBlockCell
                (cell as! GoalsBlockCell).setupUI(tableHeight: 300, tableWidth: tableView.frame.maxX)
            case 1:
                cell = tableView.dequeueReusableCell(withIdentifier: LimitsHeader.id, for: indexPath) as! LimitsHeader
            case 2:
                cell = tableView.dequeueReusableCell(withIdentifier: LimitsBlockCell.id, for: indexPath) as! LimitsBlockCell
                (cell as! LimitsBlockCell).setupUI(tableHeight: 300, tableWidth: tableView.frame.maxX)
            default: break
            }
            return cell
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            let height = (indexPath.row == 0 || indexPath.row == 2) ? 300 : 55
            return CGFloat(height)
        }
}
