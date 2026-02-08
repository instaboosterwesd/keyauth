.class Lcom/dpmods/anime$LiquidBackgroundView;
.super Landroid/view/View;
.source "anime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "LiquidBackgroundView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dpmods/anime$LiquidBackgroundView$100000006;
    }
.end annotation


# instance fields
.field private matrix:Landroid/graphics/Matrix;

.field private paint:Landroid/graphics/Paint;

.field private shader:Landroid/graphics/Shader;

.field private final this$0:Lcom/dpmods/anime;

.field private translate:F


# direct methods
.method public constructor <init>(Lcom/dpmods/anime;Landroid/content/Context;)V
    .registers 3

    .line 336
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dpmods/anime$LiquidBackgroundView;->this$0:Lcom/dpmods/anime;

    const/4 p1, 0x0

    iput p1, p0, Lcom/dpmods/anime$LiquidBackgroundView;->translate:F

    .line 337
    invoke-direct {p0}, Lcom/dpmods/anime$LiquidBackgroundView;->init()V

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$LiquidBackgroundView;)Lcom/dpmods/anime;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$LiquidBackgroundView;->this$0:Lcom/dpmods/anime;

    return-object p0
.end method

.method static synthetic access$L1000025(Lcom/dpmods/anime$LiquidBackgroundView;)F
    .registers 1

    iget p0, p0, Lcom/dpmods/anime$LiquidBackgroundView;->translate:F

    return p0
.end method

.method static synthetic access$S1000025(Lcom/dpmods/anime$LiquidBackgroundView;F)V
    .registers 2

    iput p1, p0, Lcom/dpmods/anime$LiquidBackgroundView;->translate:F

    return-void
.end method

.method private init()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 341
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dpmods/anime$LiquidBackgroundView;->paint:Landroid/graphics/Paint;

    .line 342
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/dpmods/anime$LiquidBackgroundView;->matrix:Landroid/graphics/Matrix;

    .line 344
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_3a

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 345
    const/16 v2, 0x2710

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 346
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 347
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 348
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 349
    new-instance v0, Lcom/dpmods/anime$LiquidBackgroundView$100000006;

    invoke-direct {v0, p0}, Lcom/dpmods/anime$LiquidBackgroundView$100000006;-><init>(Lcom/dpmods/anime$LiquidBackgroundView;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 356
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_3a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 381
    invoke-virtual {p0}, Lcom/dpmods/anime$LiquidBackgroundView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000  # 0.5f

    mul-float v0, v0, v1

    iget v2, p0, Lcom/dpmods/anime$LiquidBackgroundView;->translate:F

    mul-float v0, v0, v2

    .line 382
    invoke-virtual {p0}, Lcom/dpmods/anime$LiquidBackgroundView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget v1, p0, Lcom/dpmods/anime$LiquidBackgroundView;->translate:F

    mul-float v2, v2, v1

    .line 383
    iget-object v1, p0, Lcom/dpmods/anime$LiquidBackgroundView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 384
    iget-object v1, p0, Lcom/dpmods/anime$LiquidBackgroundView;->matrix:Landroid/graphics/Matrix;

    neg-float v0, v0

    neg-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 385
    iget-object v0, p0, Lcom/dpmods/anime$LiquidBackgroundView;->shader:Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/dpmods/anime$LiquidBackgroundView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 386
    const/4 v0, 0x0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/dpmods/anime$LiquidBackgroundView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/dpmods/anime$LiquidBackgroundView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/dpmods/anime$LiquidBackgroundView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 362
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/dpmods/anime$LiquidBackgroundView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 367
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 368
    const-string p3, "#FF0A000A"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    const-string v0, "#FF250030"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "#FF450055"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    filled-new-array {p4, v1, v2, v0, p3}, [I

    move-result-object v8

    .line 375
    new-instance p3, Landroid/graphics/LinearGradient;

    const/4 p4, 0x0

    int-to-float v5, p4

    int-to-float v6, p1

    int-to-float v7, p2

    const/4 v9, 0x0

    move-object p1, v9

    check-cast p1, [F

    sget-object v10, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v3, p3

    move v4, v5

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object p3, p0, Lcom/dpmods/anime$LiquidBackgroundView;->shader:Landroid/graphics/Shader;

    .line 376
    iget-object p1, p0, Lcom/dpmods/anime$LiquidBackgroundView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method
