import gleam/dict.{type Dict}

pub type ScoreBoard =
  Dict(String, Int)

pub fn create_score_board() -> ScoreBoard {
  dict.from_list([#("The Best Ever", 1_000_000)])
}

pub fn add_player(
  score_board: ScoreBoard,
  player: String,
  score: Int,
) -> ScoreBoard {
  score_board |> dict.insert(player, score)
}

pub fn remove_player(score_board: ScoreBoard, player: String) -> ScoreBoard {
  score_board |> dict.delete(player)
}

pub fn update_score(
  score_board: ScoreBoard,
  player: String,
  points: Int,
) -> ScoreBoard {
  case score_board |> dict.get(player) {
    Ok(score) ->
      score_board
      |> remove_player(player)
      |> add_player(player, score + points)
    _ -> score_board
  }
}

pub fn apply_monday_bonus(score_board: ScoreBoard) -> ScoreBoard {
  score_board |> dict.map_values(fn(_, s) { s + 100 })
}
