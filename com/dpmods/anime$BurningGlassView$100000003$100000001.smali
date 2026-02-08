.class Lcom/dpmods/anime$BurningGlassView$100000003$100000001;
.super Ljava/lang/Object;
.source "anime.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$BurningGlassView$100000003;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime$BurningGlassView$100000003;


# direct methods
.method constructor <init>(Lcom/dpmods/anime$BurningGlassView$100000003;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$BurningGlassView$100000003$100000001;->this$0:Lcom/dpmods/anime$BurningGlassView$100000003;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$BurningGlassView$100000003$100000001;)Lcom/dpmods/anime$BurningGlassView$100000003;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$BurningGlassView$100000003$100000001;->this$0:Lcom/dpmods/anime$BurningGlassView$100000003;

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

    .line 210
    iget-object v0, p0, Lcom/dpmods/anime$BurningGlassView$100000003$100000001;->this$0:Lcom/dpmods/anime$BurningGlassView$100000003;

    invoke-static {v0}, Lcom/dpmods/anime$BurningGlassView$100000003;->access$0(Lcom/dpmods/anime$BurningGlassView$100000003;)Lcom/dpmods/anime$BurningGlassView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/dpmods/anime$BurningGlassView;->access$S1000010(Lcom/dpmods/anime$BurningGlassView;F)V

    .line 211
    iget-object p1, p0, Lcom/dpmods/anime$BurningGlassView$100000003$100000001;->this$0:Lcom/dpmods/anime$BurningGlassView$100000003;

    invoke-static {p1}, Lcom/dpmods/anime$BurningGlassView$100000003;->access$0(Lcom/dpmods/anime$BurningGlassView$100000003;)Lcom/dpmods/anime$BurningGlassView;

    move-result-object p1

    invoke-static {p1}, Lcom/dpmods/anime$BurningGlassView;->access$1000021(Lcom/dpmods/anime$BurningGlassView;)V

    .line 212
    iget-object p1, p0, Lcom/dpmods/anime$BurningGlassView$100000003$100000001;->this$0:Lcom/dpmods/anime$BurningGlassView$100000003;

    invoke-static {p1}, Lcom/dpmods/anime$BurningGlassView$100000003;->access$0(Lcom/dpmods/anime$BurningGlassView$100000003;)Lcom/dpmods/anime$BurningGlassView;

    move-result-object p1

    invoke-static {p1}, Lcom/dpmods/anime$BurningGlassView;->access$1000022(Lcom/dpmods/anime$BurningGlassView;)V

    .line 213
    iget-object p1, p0, Lcom/dpmods/anime$BurningGlassView$100000003$100000001;->this$0:Lcom/dpmods/anime$BurningGlassView$100000003;

    invoke-static {p1}, Lcom/dpmods/anime$BurningGlassView$100000003;->access$0(Lcom/dpmods/anime$BurningGlassView$100000003;)Lcom/dpmods/anime$BurningGlassView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dpmods/anime$BurningGlassView;->invalidate()V

    return-void
.end method
