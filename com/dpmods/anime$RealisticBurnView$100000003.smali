.class Lcom/dpmods/anime$RealisticBurnView$100000003;
.super Ljava/lang/Object;
.source "anime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$RealisticBurnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000003"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dpmods/anime$RealisticBurnView$100000003$100000001;,
        Lcom/dpmods/anime$RealisticBurnView$100000003$100000002;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime$RealisticBurnView;


# direct methods
.method constructor <init>(Lcom/dpmods/anime$RealisticBurnView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$RealisticBurnView$100000003;->this$0:Lcom/dpmods/anime$RealisticBurnView;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$RealisticBurnView$100000003;)Lcom/dpmods/anime$RealisticBurnView;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$RealisticBurnView$100000003;->this$0:Lcom/dpmods/anime$RealisticBurnView;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/dpmods/anime$RealisticBurnView$100000003;->this$0:Lcom/dpmods/anime$RealisticBurnView;

    invoke-virtual {v0}, Lcom/dpmods/anime$RealisticBurnView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 253
    iget-object v1, p0, Lcom/dpmods/anime$RealisticBurnView$100000003;->this$0:Lcom/dpmods/anime$RealisticBurnView;

    invoke-virtual {v1}, Lcom/dpmods/anime$RealisticBurnView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 254
    iget-object v2, p0, Lcom/dpmods/anime$RealisticBurnView$100000003;->this$0:Lcom/dpmods/anime$RealisticBurnView;

    float-to-double v3, v0

    float-to-double v0, v1

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3fc00000  # 1.5f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/dpmods/anime$RealisticBurnView$100000003;->this$0:Lcom/dpmods/anime$RealisticBurnView;

    invoke-static {v1}, Lcom/dpmods/anime$RealisticBurnView;->access$0(Lcom/dpmods/anime$RealisticBurnView;)Lcom/dpmods/anime;

    move-result-object v1

    const/16 v3, 0x3c

    invoke-static {v1, v3}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v2, v0}, Lcom/dpmods/anime$RealisticBurnView;->access$S1000012(Lcom/dpmods/anime$RealisticBurnView;F)V

    .line 256
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    int-to-float v2, v1

    aput v2, v0, v1

    iget-object v1, p0, Lcom/dpmods/anime$RealisticBurnView$100000003;->this$0:Lcom/dpmods/anime$RealisticBurnView;

    invoke-static {v1}, Lcom/dpmods/anime$RealisticBurnView;->access$L1000012(Lcom/dpmods/anime$RealisticBurnView;)F

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 257
    const/16 v1, 0xfa0

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 258
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v1, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 260
    new-instance v1, Lcom/dpmods/anime$RealisticBurnView$100000003$100000001;

    invoke-direct {v1, p0}, Lcom/dpmods/anime$RealisticBurnView$100000003$100000001;-><init>(Lcom/dpmods/anime$RealisticBurnView$100000003;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 270
    new-instance v1, Lcom/dpmods/anime$RealisticBurnView$100000003$100000002;

    invoke-direct {v1, p0}, Lcom/dpmods/anime$RealisticBurnView$100000003$100000002;-><init>(Lcom/dpmods/anime$RealisticBurnView$100000003;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 279
    iget-object v1, p0, Lcom/dpmods/anime$RealisticBurnView$100000003;->this$0:Lcom/dpmods/anime$RealisticBurnView;

    invoke-static {v1, v2}, Lcom/dpmods/anime$RealisticBurnView;->access$S1000014(Lcom/dpmods/anime$RealisticBurnView;Z)V

    .line 280
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
