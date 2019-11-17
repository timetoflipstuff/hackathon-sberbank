
import UIKit

struct Goal {
    var name: String
    var planedAmmount: Int
    var image: String
    var isPaid: Bool
}

final class GoalsBlockCell: UITableViewCell {
    
    static let id = "GoalsBlockCell"
    private let tableView = UITableView()
    public var goal = [Goal(name: "Own appartment", planedAmmount: 10000, image: "goalHome", isPaid: false),
                       Goal(name: "Lets beach bumming", planedAmmount: 10000, image: "goalHoliday", isPaid: true),
                       Goal(name: "Want a car", planedAmmount: 5000, image: "goalCar", isPaid: false),
                       Goal(name: "New Mac-book", planedAmmount: 5000, image: "goalMac", isPaid: true)]
    
    private let mainLabel: UILabel = {
        let label = UILabel()
        label.text = "Default GoalsBlockCell Text"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 24)
        return label
    }()
    
    public func setupUI(tableHeight: CGFloat, tableWidth: CGFloat){
        tableView.frame = CGRect(x: 0.0, y: 0.0, width: tableWidth, height: tableHeight)
    }

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .clear
        
        tableView.register(GoalsCell.self, forCellReuseIdentifier: GoalsCell.id)
        tableView.frame = CGRect(x: 0, y: 0, width: contentView.frame.maxX, height: 150.0)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .green
        contentView.addSubview(tableView)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

    extension GoalsBlockCell: UITableViewDataSource, UITableViewDelegate {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return goal.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: GoalsCell.id, for: indexPath) as! GoalsCell
            cell.setupUI(with: goal[indexPath.row])            
            return cell
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 90
        }
}
