
import UIKit

final class LimitsBlockCell: UITableViewCell {
    
    static let id = "LimitsBlockCell"
    
    private let tableView = UITableView()
    public var limitPosition = [LimitPosition(name: "Home", spent: 1000, image: "house", limit: 1000),
                            LimitPosition(name: "Food", spent: 500, image: "food", limit: 547),
                            LimitPosition(name: "Entertainments", spent: 700, image: "party", limit: 427),
                            LimitPosition(name: "Other", spent: 1500, image: "different", limit: 2000)]
    
    
    private let mainLabel: UILabel = {
        let label = UILabel()
        label.text = "Default LimitsBlockCell Text"
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
        
        tableView.frame = CGRect(x: 0, y: 0, width: contentView.frame.maxX, height: 150.0)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .clear
        contentView.addSubview(tableView)
        
        tableView.register(LimitsCell.self, forCellReuseIdentifier: LimitsCell.id)
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


    extension LimitsBlockCell: UITableViewDataSource, UITableViewDelegate {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return limitPosition.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: LimitsCell.id, for: indexPath) as! LimitsCell
            cell.setupUI(with: limitPosition[indexPath.row])
            return cell
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 90
        }
    

}
