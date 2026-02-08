.class Lcom/dpmods/anime$BurningGlassView$100000003;
.super Ljava/lang/Object;
.source "anime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$BurningGlassView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000003"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dpmods/anime$BurningGlassView$100000003$100000001;,
        Lcom/dpmods/anime$BurningGlassView$100000003$100000002;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime$BurningGlassView;


# direct methods
.method constructor <init>(Lcom/dpmods/anime$BurningGlassView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$BurningGlassView$100000003;->this$0:Lcom/dpmods/anime$BurningGlassView;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$BurningGlassView$100000003;)Lcom/dpmods/anime$BurningGlassView;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$BurningGlassView$100000003;->this$0:Lcom/dpmods/anime$BurningGlassView;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/dpmods/anime$BurningGlassView$100000003;->this$0:Lcom/dpmods/anime$BurningGlassView;

    invoke-virtual {v0}, Lcom/dpmods/anime$BurningGlassView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 198
    iget-object v1, p0, Lcom/dpmods/anime$BurningGlassView$100000003;->this$0:Lcom/dpmods/anime$BurningGlassView;

    invoke-virtual {v1}, Lcom/dpmods/anime$BurningGlassView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 200
    iget-object v2, p0, Lcom/dpmods/anime$BurningGlassView$100000003;->this$0:Lcom/dpmods/anime$BurningGlassView;

    const/4 v3, 0x2

    int-to-float v4, v3

    div-float/2addr v0, v4

    float-to-double v5, v0

    div-float/2addr v1, v4

    float-to-double v0, v1

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/dpmods/anime$BurningGlassView$100000003;->this$0:Lcom/dpmods/anime$BurningGlassView;

    invoke-static {v1}, Lcom/dpmods/anime$BurningGlassView;->access$0(Lcom/dpmods/anime$BurningGlassView;)Lcom/dpmods/anime;

    move-result-object v1

    const/16 v4, 0x1e

    invoke-static {v1, v4}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v2, v0}, Lcom/dpmods/anime$BurningGlassView;->access$S1000011(Lcom/dpmods/anime$BurningGlassView;F)V

    .line 203
    new-array v0, v3, [F

    const/4 v1, 0x0

    int-to-float v2, v1

    aput v2, v0, v1

    iget-object v1, p0, Lcom/dpmods/anime$BurningGlassView$100000003;->this$0:Lcom/dpmods/anime$BurningGlassView;

    invoke-static {v1}, Lcom/dpmods/anime$BurningGlassView;->access$L1000011(Lcom/dpmods/anime$BurningGlassView;)F

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 204
    const/16 v1, 0xbb8

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 205
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 207
    new-instance v1, Lcom/dpmods/anime$BurningGlassView$100000003$100000001;

    invoke-direct {v1, p0}, Lcom/dpmods/anime$BurningGlassView$100000003$100000001;-><init>(Lcom/dpmods/anime$BurningGlassView$100000003;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 217
    new-instance v1, Lcom/dpmods/anime$BurningGlassView$100000003$100000002;

    invoke-direct {v1, p0}, Lcom/dpmods/anime$BurningGlassView$100000003$100000002;-><init>(Lcom/dpmods/anime$BurningGlassView$100000003;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 224
    iget-object v1, p0, Lcom/dpmods/anime$BurningGlassView$100000003;->this$0:Lcom/dpmods/anime$BurningGlassView;

    invoke-static {v1, v2}, Lcom/dpmods/anime$BurningGlassView;->access$S1000012(Lcom/dpmods/anime$BurningGlassView;Z)V

    .line 225
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
