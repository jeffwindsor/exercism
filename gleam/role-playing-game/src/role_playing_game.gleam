import gleam/int
import gleam/option.{type Option, None, Some}

pub type Player {
  Player(name: Option(String), level: Int, health: Int, mana: Option(Int))
}

pub fn introduce(player: Player) -> String {
  case player.name {
    None -> "Mighty Magician"
    Some(name) -> name
  }
}

pub fn revive(player: Player) -> Option(Player) {
  case player.health {
    0 -> {
      let mana = case player.level {
        n if n >= 10 -> Some(100)
        _ -> player.mana
      }
      Some(Player(..player, health: 100, mana: mana))
    }
    _ -> None
  }
}

pub fn cast_spell(player: Player, cost: Int) -> #(Player, Int) {
  case player.mana {
    Some(mana) if mana >= cost -> #(
      Player(..player, mana: Some(mana - cost)),
      cost * 2,
    )
    Some(_) -> #(player, 0)
    None -> #(Player(..player, health: int.max(0, player.health - cost)), 0)
  }
}
