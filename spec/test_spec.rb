describe '四則演算' do
  context '足し算' do
    it '1+1は2になる' do
      expect(1 + 1).to eq 2
    end
  end

  context '引き算' do
    it '2 - 1 は 1 になる' do
      expect(2 - 1).to eq 1
    end
  end

  context '掛け算' do
    it '2x1は2になる' do
      expect(2 * 1).to eq 2
    end
  end

  context '割り算' do
    it '2 ÷ 1 は 2 になる' do
      expect(2 / 1).to eq 2
    end
  end
end
