.class Lcom/dpmods/anime$BurningPaperView$100000003;
.super Ljava/lang/Object;
.source "anime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$BurningPaperView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000003"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dpmods/anime$BurningPaperView$100000003$100000001;,
        Lcom/dpmods/anime$BurningPaperView$100000003$100000002;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime$BurningPaperView;


# direct methods
.method constructor <init>(Lcom/dpmods/anime$BurningPaperView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$BurningPaperView$100000003;->this$0:Lcom/dpmods/anime$BurningPaperView;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$BurningPaperView$100000003;)Lcom/dpmods/anime$BurningPaperView;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$BurningPaperView$100000003;->this$0:Lcom/dpmods/anime$BurningPaperView;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/dpmods/anime$BurningPaperView$100000003;->this$0:Lcom/dpmods/anime$BurningPaperView;

    invoke-virtual {v0}, Lcom/dpmods/anime$BurningPaperView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 190
    iget-object v1, p0, Lcom/dpmods/anime$BurningPaperView$100000003;->this$0:Lcom/dpmods/anime$BurningPaperView;

    invoke-virtual {v1}, Lcom/dpmods/anime$BurningPaperView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 191
    iget-object v2, p0, Lcom/dpmods/anime$BurningPaperView$100000003;->this$0:Lcom/dpmods/anime$BurningPaperView;

    const/4 v3, 0x2

    int-to-float v4, v3

    div-float/2addr v0, v4

    float-to-double v5, v0

    int-to-double v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-float/2addr v1, v4

    float-to-double v0, v1

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/16 v1, 0x64

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v2, v0}, Lcom/dpmods/anime$BurningPaperView;->access$S1000010(Lcom/dpmods/anime$BurningPaperView;F)V

    .line 193
    new-array v0, v3, [F

    const/4 v1, 0x0

    int-to-float v2, v1

    aput v2, v0, v1

    iget-object v1, p0, Lcom/dpmods/anime$BurningPaperView$100000003;->this$0:Lcom/dpmods/anime$BurningPaperView;

    invoke-static {v1}, Lcom/dpmods/anime$BurningPaperView;->access$L1000010(Lcom/dpmods/anime$BurningPaperView;)F

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 194
    const/16 v1, 0x9c4

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 195
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 196
    new-instance v1, Lcom/dpmods/anime$BurningPaperView$100000003$100000001;

    invoke-direct {v1, p0}, Lcom/dpmods/anime$BurningPaperView$100000003$100000001;-><init>(Lcom/dpmods/anime$BurningPaperView$100000003;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 206
    new-instance v1, Lcom/dpmods/anime$BurningPaperView$100000003$100000002;

    invoke-direct {v1, p0}, Lcom/dpmods/anime$BurningPaperView$100000003$100000002;-><init>(Lcom/dpmods/anime$BurningPaperView$100000003;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 214
    iget-object v1, p0, Lcom/dpmods/anime$BurningPaperView$100000003;->this$0:Lcom/dpmods/anime$BurningPaperView;

    invoke-static {v1, v2}, Lcom/dpmods/anime$BurningPaperView;->access$S1000011(Lcom/dpmods/anime$BurningPaperView;Z)V

    .line 215
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
