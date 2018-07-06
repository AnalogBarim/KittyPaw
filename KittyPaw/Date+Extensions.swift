import Foundation

extension Date {
    func toString(dateStyle: DateFormatter.Style, timeStyle: DateFormatter.Style, timeZone: TimeZone, locale: Locale) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = dateStyle
        dateFormatter.timeStyle = timeStyle
        dateFormatter.timeZone = timeZone
        dateFormatter.locale = locale
        
        return dateFormatter.string(from: self)
    }
}
