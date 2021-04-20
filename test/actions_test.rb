require_relative '../src/actions/actions'
require_relative '../src/model/state'

class ActionsTest 
    def test_move_snake
        initial_state = Model::State.new(
                            Model::Food.new( 4, 4),
                            Model::Snake.new([
                                Model::Coord.new( 1, 1),
                                Model::Coord.new( 0, 1)
                            ]),
                            Model::Grid.new( 8, 12),
                            Model::Direction::DOWN,
                            false
        )

        expect_state = initial_state = 
            Model::State.new(
                Model::Food.new( 4, 4),
                Model::Snake.new([
                    Model::Coord.new( 1, 1),
                    Model::Coord.new( 0, 1)
                ]),
                Model::Grid.new( 8, 12),
                Model::Direction::DOWN,
                false
        )

        actual_state = Actions::move_snake(initial_state)
        assert_equal actual_state, expect_state
    end
end