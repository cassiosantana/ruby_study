class Weapon < ApplicationRecord
  validates :level, numericality: { greater_than: 0, less_than_or_equal_to: 99 }
  validates :current_power, numericality: { greater_than: 2999, less_than_or_equal_to: 12800 }
  validates :power_base, numericality: { equal_to: 3000 }
  validates :power_step, numericality: { equal_to: 100 }
  validates :name, presence: true

  # Demonstrates current weapon power
  def current_power
    power_base + ((level-1)* power_step)
  end

  # Shows the weapon title
  def title
    "#{name} ##{level}"
  end
end
