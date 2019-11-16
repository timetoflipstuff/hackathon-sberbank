
import UIKit

final class GoalsCell: UITableViewCell {
    
    static let id = "GoalsCell"
    
    private let mainLabel: UILabel = {
        let label = UILabel()
        label.text = "Default GoalsCell Text"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 24)
        return label
    }()
    
    public func setupUI(mainText: String?){
        mainLabel.text = mainText
    }

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .clear
        mainLabel.frame = self.frame
        mainLabel.center = self.center
        
        contentView.addSubview(mainLabel)
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
