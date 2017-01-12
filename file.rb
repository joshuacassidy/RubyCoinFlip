Shoes.app :width => 400, :height => 200, :title => "coin" do

  @img1 = nil
  @img2 = nil

  flow() do
    style(:margin_left => '38%', margin_top => '25%')
    @img1 = image "heads.png"

  end

  flow() do
    style(:margin_left => '40%', margin_top => '25%')
    button "coin flip" do
    numberOfFlips = ask("How many coin flips would you like to do?").to_i
    numberOfHeads = 0
    numberOfTails = 0

      for i in 1..numberOfFlips
        coin = rand(2)

          case coin
            when 0
              @img1.path = "heads.png"
              numberOfHeads += 1
            when 1
              @img1.path = "tails.png"
              numberOfTails += 1
            end
            coin == 0 ? alert("heads") : alert("tails") end

            if (numberOfHeads > numberOfTails)
              alert("heads was more frequent than tails as,there was #{numberOfHeads} heads and #{numberOfTails} tails")
            elseif (numberOfHeads > numberOfTails)
              alert("tails was more frequent than heads as,there was #{numberOfHeads} heads and #{numberOfTails} tails")
            else
              alert("there was the same number of heads and tails as,there was #{numberOfHeads} heads and #{numberOfTails} tails")

            end
        end
    end
end
