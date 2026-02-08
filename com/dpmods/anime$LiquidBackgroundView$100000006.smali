.class Lcom/dpmods/anime$LiquidBackgroundView$100000006;
.super Ljava/lang/Object;
.source "anime.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$LiquidBackgroundView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000006"
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime$LiquidBackgroundView;


# direct methods
.method constructor <init>(Lcom/dpmods/anime$LiquidBackgroundView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$LiquidBackgroundView$100000006;->this$0:Lcom/dpmods/anime$LiquidBackgroundView;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$LiquidBackgroundView$100000006;)Lcom/dpmods/anime$LiquidBackgroundView;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$LiquidBackgroundView$100000006;->this$0:Lcom/dpmods/anime$LiquidBackgroundView;

    return-object p0
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/ValueAnimator;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/dpmods/anime$LiquidBackgroundView$100000006;->this$0:Lcom/dpmods/anime$LiquidBackgroundView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/dpmods/anime$LiquidBackgroundView;->access$S1000025(Lcom/dpmods/anime$LiquidBackgroundView;F)V

    .line 353
    iget-object p1, p0, Lcom/dpmods/anime$LiquidBackgroundView$100000006;->this$0:Lcom/dpmods/anime$LiquidBackgroundView;

    invoke-virtual {p1}, Lcom/dpmods/anime$LiquidBackgroundView;->invalidate()V

    return-void
.end method
