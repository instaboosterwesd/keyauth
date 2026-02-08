.class Lcom/dpmods/anime$RealisticBurnView$100000003$100000002;
.super Landroid/animation/AnimatorListenerAdapter;
.source "anime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$RealisticBurnView$100000003;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000002"
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime$RealisticBurnView$100000003;


# direct methods
.method constructor <init>(Lcom/dpmods/anime$RealisticBurnView$100000003;)V
    .registers 2

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$RealisticBurnView$100000003$100000002;->this$0:Lcom/dpmods/anime$RealisticBurnView$100000003;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$RealisticBurnView$100000003$100000002;)Lcom/dpmods/anime$RealisticBurnView$100000003;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$RealisticBurnView$100000003$100000002;->this$0:Lcom/dpmods/anime$RealisticBurnView$100000003;

    return-object p0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 273
    iget-object p1, p0, Lcom/dpmods/anime$RealisticBurnView$100000003$100000002;->this$0:Lcom/dpmods/anime$RealisticBurnView$100000003;

    invoke-static {p1}, Lcom/dpmods/anime$RealisticBurnView$100000003;->access$0(Lcom/dpmods/anime$RealisticBurnView$100000003;)Lcom/dpmods/anime$RealisticBurnView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/dpmods/anime$RealisticBurnView;->access$S1000013(Lcom/dpmods/anime$RealisticBurnView;Z)V

    .line 274
    iget-object p1, p0, Lcom/dpmods/anime$RealisticBurnView$100000003$100000002;->this$0:Lcom/dpmods/anime$RealisticBurnView$100000003;

    invoke-static {p1}, Lcom/dpmods/anime$RealisticBurnView$100000003;->access$0(Lcom/dpmods/anime$RealisticBurnView$100000003;)Lcom/dpmods/anime$RealisticBurnView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dpmods/anime$RealisticBurnView;->setClickable(Z)V

    .line 275
    iget-object p1, p0, Lcom/dpmods/anime$RealisticBurnView$100000003$100000002;->this$0:Lcom/dpmods/anime$RealisticBurnView$100000003;

    invoke-static {p1}, Lcom/dpmods/anime$RealisticBurnView$100000003;->access$0(Lcom/dpmods/anime$RealisticBurnView$100000003;)Lcom/dpmods/anime$RealisticBurnView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dpmods/anime$RealisticBurnView;->invalidate()V

    return-void
.end method
