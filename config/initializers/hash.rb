class Hash
  def dig(*path)
    path.inject(self) do |h, key|
      h.respond_to?(:keys) ? h[key] : nil
    end
  end
end
