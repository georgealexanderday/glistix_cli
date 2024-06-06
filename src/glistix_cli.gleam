pub type Time {
  Seconds(Int)
  Minutes(amount: Int)
}

pub fn as_seconds(time: Time) -> Int {
  case time {
    Seconds(amount) -> amount
    Minutes(amount) -> 60 * amount
  }
}

pub fn main() {
  let example1 = Seconds(5)
  let example2 = Minutes(30)
  let seconds: Int = as_seconds(example1)
  let minutes = as_seconds(example2)

  #(seconds, minutes)
}
