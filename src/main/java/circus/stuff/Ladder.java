package circus.stuff;

<<<<<<< HEAD:src/main/java/circus/stuff/Ladder.java
public class Ladder extends Equipment {
=======
import circus.Asset;

public class Ladder extends Equipment implements Asset {
>>>>>>> origin/improved:src/main/java/Ladder.java

    public Ladder(int purchasePrice) {
        super(purchasePrice);
    }

    @Override
    public int getValue() {
        return purchasePrice / 2;
    }
}
