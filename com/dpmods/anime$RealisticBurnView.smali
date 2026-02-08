.class Lcom/dpmods/anime$RealisticBurnView;
.super Landroid/view/View;
.source "anime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "RealisticBurnView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dpmods/anime$RealisticBurnView$100000003;,
        Lcom/dpmods/anime$RealisticBurnView$Particle;
    }
.end annotation


# instance fields
.field private charPaint:Landroid/graphics/Paint;

.field private clearPaint:Landroid/graphics/Paint;

.field private currentRadius:F

.field private fireCorePaint:Landroid/graphics/Paint;

.field private fireGlowPaint:Landroid/graphics/Paint;

.field private firePath:Landroid/graphics/Path;

.field private isAnimating:Z

.field private isBurnComplete:Z

.field private maxRadius:F

.field private overlayPaint:Landroid/graphics/Paint;

.field private particlePaint:Landroid/graphics/Paint;

.field private particles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dpmods/anime$RealisticBurnView$Particle;",
            ">;"
        }
    .end annotation
.end field

.field private random:Ljava/util/Random;

.field private final this$0:Lcom/dpmods/anime;


# direct methods
.method public constructor <init>(Lcom/dpmods/anime;Landroid/content/Context;)V
    .registers 3

    .line 214
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dpmods/anime$RealisticBurnView;->this$0:Lcom/dpmods/anime;

    const/4 p1, 0x0

    iput p1, p0, Lcom/dpmods/anime$RealisticBurnView;->currentRadius:F

    iput p1, p0, Lcom/dpmods/anime$RealisticBurnView;->maxRadius:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dpmods/anime$RealisticBurnView;->isBurnComplete:Z

    iput-boolean p1, p0, Lcom/dpmods/anime$RealisticBurnView;->isAnimating:Z

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$RealisticBurnView;->random:Ljava/util/Random;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$RealisticBurnView;->particles:Ljava/util/List;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$RealisticBurnView;->firePath:Landroid/graphics/Path;

    .line 215
    invoke-direct {p0}, Lcom/dpmods/anime$RealisticBurnView;->init()V

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$RealisticBurnView;)Lcom/dpmods/anime;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$RealisticBurnView;->this$0:Lcom/dpmods/anime;

    return-object p0
.end method

.method static synthetic access$1000024(Lcom/dpmods/anime$RealisticBurnView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/dpmods/anime$RealisticBurnView;->spawnParticles(Z)V

    return-void
.end method

.method static synthetic access$1000025(Lcom/dpmods/anime$RealisticBurnView;)V
    .registers 1

    invoke-direct {p0}, Lcom/dpmods/anime$RealisticBurnView;->updateParticles()V

    return-void
.end method

.method static synthetic access$L1000011(Lcom/dpmods/anime$RealisticBurnView;)F
    .registers 1

    iget p0, p0, Lcom/dpmods/anime$RealisticBurnView;->currentRadius:F

    return p0
.end method

.method static synthetic access$L1000012(Lcom/dpmods/anime$RealisticBurnView;)F
    .registers 1

    iget p0, p0, Lcom/dpmods/anime$RealisticBurnView;->maxRadius:F

    return p0
.end method

.method static synthetic access$L1000013(Lcom/dpmods/anime$RealisticBurnView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/dpmods/anime$RealisticBurnView;->isBurnComplete:Z

    return p0
.end method

.method static synthetic access$L1000014(Lcom/dpmods/anime$RealisticBurnView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/dpmods/anime$RealisticBurnView;->isAnimating:Z

    return p0
.end method

.method static synthetic access$L1000015(Lcom/dpmods/anime$RealisticBurnView;)Ljava/util/Random;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$RealisticBurnView;->random:Ljava/util/Random;

    return-object p0
.end method

.method static synthetic access$S1000011(Lcom/dpmods/anime$RealisticBurnView;F)V
    .registers 2

    iput p1, p0, Lcom/dpmods/anime$RealisticBurnView;->currentRadius:F

    return-void
.end method

.method static synthetic access$S1000012(Lcom/dpmods/anime$RealisticBurnView;F)V
    .registers 2

    iput p1, p0, Lcom/dpmods/anime$RealisticBurnView;->maxRadius:F

    return-void
.end method

.method static synthetic access$S1000013(Lcom/dpmods/anime$RealisticBurnView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/dpmods/anime$RealisticBurnView;->isBurnComplete:Z

    return-void
.end method

.method static synthetic access$S1000014(Lcom/dpmods/anime$RealisticBurnView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/dpmods/anime$RealisticBurnView;->isAnimating:Z

    return-void
.end method

.method static synthetic access$S1000015(Lcom/dpmods/anime$RealisticBurnView;Ljava/util/Random;)V
    .registers 2

    iput-object p1, p0, Lcom/dpmods/anime$RealisticBurnView;->random:Ljava/util/Random;

    return-void
.end method

.method private drawFractalFire(Landroid/graphics/Canvas;FFF)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FFF)V"
        }
    .end annotation

    .line 321
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/dpmods/anime$RealisticBurnView;->firePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 322
    nop

    .line 323
    const-wide v2, 0x401921fb54442d18L  # 6.283185307179586

    const/16 v4, 0x96

    int-to-double v5, v4

    div-double/2addr v2, v5

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 326
    const/4 v7, 0x0

    :goto_18
    if-le v7, v4, :cond_35

    .line 338
    iget-object v2, v0, Lcom/dpmods/anime$RealisticBurnView;->firePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 339
    iget-object v2, v0, Lcom/dpmods/anime$RealisticBurnView;->firePath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/dpmods/anime$RealisticBurnView;->charPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 340
    iget-object v2, v0, Lcom/dpmods/anime$RealisticBurnView;->firePath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/dpmods/anime$RealisticBurnView;->fireGlowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 341
    iget-object v2, v0, Lcom/dpmods/anime$RealisticBurnView;->firePath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/dpmods/anime$RealisticBurnView;->fireCorePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    .line 327
    :cond_35
    int-to-double v8, v7

    mul-double v8, v8, v2

    .line 328
    const/4 v10, 0x5

    int-to-double v11, v10

    mul-double v11, v11, v8

    long-to-double v13, v5

    const-wide v15, 0x3f60624dd2f1a9fcL  # 0.002

    mul-double v15, v15, v13

    add-double/2addr v11, v15

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    .line 329
    const/16 v15, 0xf

    move-wide/from16 v17, v5

    int-to-double v4, v15

    mul-double v4, v4, v8

    const-wide v19, 0x3f789374bc6a7efaL  # 0.006

    mul-double v19, v19, v13

    sub-double v4, v4, v19

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 330
    const/16 v6, 0x28

    move-wide/from16 v19, v11

    int-to-double v10, v6

    mul-double v10, v10, v8

    const-wide v21, 0x3f8eb851eb851eb8L  # 0.015

    mul-double v13, v13, v21

    add-double/2addr v10, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 331
    iget-object v6, v0, Lcom/dpmods/anime$RealisticBurnView;->this$0:Lcom/dpmods/anime;

    const/4 v12, 0x5

    invoke-static {v6, v12}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result v6

    int-to-double v12, v6

    mul-double v12, v12, v19

    iget-object v6, v0, Lcom/dpmods/anime$RealisticBurnView;->this$0:Lcom/dpmods/anime;

    const/4 v14, 0x3

    invoke-static {v6, v14}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result v6

    int-to-double v14, v6

    mul-double v4, v4, v14

    add-double/2addr v12, v4

    iget-object v4, v0, Lcom/dpmods/anime$RealisticBurnView;->this$0:Lcom/dpmods/anime;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result v4

    int-to-double v4, v4

    mul-double v10, v10, v4

    add-double/2addr v12, v10

    double-to-float v4, v12

    .line 332
    add-float v4, p4, v4

    .line 333
    move/from16 v5, p2

    float-to-double v10, v5

    float-to-double v12, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double v14, v14, v12

    add-double/2addr v10, v14

    double-to-float v4, v10

    .line 334
    move/from16 v6, p3

    float-to-double v10, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v12, v12, v8

    add-double/2addr v10, v12

    double-to-float v8, v10

    .line 335
    if-nez v7, :cond_b2

    iget-object v9, v0, Lcom/dpmods/anime$RealisticBurnView;->firePath:Landroid/graphics/Path;

    invoke-virtual {v9, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_b7

    .line 336
    :cond_b2
    iget-object v9, v0, Lcom/dpmods/anime$RealisticBurnView;->firePath:Landroid/graphics/Path;

    invoke-virtual {v9, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 326
    :goto_b7
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v5, v17

    const/16 v4, 0x96

    goto/16 :goto_18
.end method

.method private drawParticles(Landroid/graphics/Canvas;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/dpmods/anime$RealisticBurnView;->particles:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 348
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_f

    return-void

    .line 345
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dpmods/anime$RealisticBurnView$Particle;

    .line 346
    iget-object v2, p0, Lcom/dpmods/anime$RealisticBurnView;->particlePaint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/dpmods/anime$RealisticBurnView$Particle;->color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 347
    iget-object v2, p0, Lcom/dpmods/anime$RealisticBurnView;->particlePaint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/dpmods/anime$RealisticBurnView$Particle;->alpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 348
    iget v2, v1, Lcom/dpmods/anime$RealisticBurnView$Particle;->x:F

    iget v3, v1, Lcom/dpmods/anime$RealisticBurnView$Particle;->y:F

    iget v1, v1, Lcom/dpmods/anime$RealisticBurnView$Particle;->size:F

    iget-object v4, p0, Lcom/dpmods/anime$RealisticBurnView;->particlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_8
.end method

.method private init()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 219
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/dpmods/anime$RealisticBurnView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 221
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dpmods/anime$RealisticBurnView;->overlayPaint:Landroid/graphics/Paint;

    .line 222
    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dpmods/anime$RealisticBurnView;->clearPaint:Landroid/graphics/Paint;

    .line 225
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 227
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dpmods/anime$RealisticBurnView;->charPaint:Landroid/graphics/Paint;

    .line 228
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 229
    iget-object v0, p0, Lcom/dpmods/anime$RealisticBurnView;->charPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/dpmods/anime$RealisticBurnView;->this$0:Lcom/dpmods/anime;

    const/16 v3, 0xf

    invoke-static {v2, v3}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 230
    iget-object v0, p0, Lcom/dpmods/anime$RealisticBurnView;->charPaint:Landroid/graphics/Paint;

    const-string v2, "#100505"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 231
    iget-object v0, p0, Lcom/dpmods/anime$RealisticBurnView;->charPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    iget-object v3, p0, Lcom/dpmods/anime$RealisticBurnView;->this$0:Lcom/dpmods/anime;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 233
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dpmods/anime$RealisticBurnView;->fireGlowPaint:Landroid/graphics/Paint;

    .line 234
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 235
    iget-object v0, p0, Lcom/dpmods/anime$RealisticBurnView;->fireGlowPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/dpmods/anime$RealisticBurnView;->this$0:Lcom/dpmods/anime;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 236
    iget-object v0, p0, Lcom/dpmods/anime$RealisticBurnView;->fireGlowPaint:Landroid/graphics/Paint;

    const-string v2, "#FF5722"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    iget-object v0, p0, Lcom/dpmods/anime$RealisticBurnView;->fireGlowPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    iget-object v3, p0, Lcom/dpmods/anime$RealisticBurnView;->this$0:Lcom/dpmods/anime;

    const/16 v4, 0xc

    invoke-static {v3, v4}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 239
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dpmods/anime$RealisticBurnView;->fireCorePaint:Landroid/graphics/Paint;

    .line 240
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 241
    iget-object v0, p0, Lcom/dpmods/anime$RealisticBurnView;->fireCorePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/dpmods/anime$RealisticBurnView;->this$0:Lcom/dpmods/anime;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 242
    iget-object v0, p0, Lcom/dpmods/anime$RealisticBurnView;->fireCorePaint:Landroid/graphics/Paint;

    const-string v2, "#FFD700"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dpmods/anime$RealisticBurnView;->particlePaint:Landroid/graphics/Paint;

    .line 245
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private spawnParticles(Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 353
    invoke-virtual {p0}, Lcom/dpmods/anime$RealisticBurnView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    .line 354
    invoke-virtual {p0}, Lcom/dpmods/anime$RealisticBurnView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 357
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_58

    .line 358
    nop

    .line 359
    nop

    :goto_15
    if-lt v3, v1, :cond_18

    goto :goto_5d

    .line 361
    :cond_18
    iget-object p1, p0, Lcom/dpmods/anime$RealisticBurnView;->this$0:Lcom/dpmods/anime;

    const/16 v5, 0x78

    invoke-static {p1, v5}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result p1

    int-to-float p1, p1

    .line 362
    sub-float v5, v0, p1

    iget-object v6, p0, Lcom/dpmods/anime$RealisticBurnView;->random:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    int-to-float v7, v1

    mul-float p1, p1, v7

    mul-float v6, v6, p1

    add-float/2addr v5, v6

    .line 364
    iget-object p1, p0, Lcom/dpmods/anime$RealisticBurnView;->this$0:Lcom/dpmods/anime;

    const/16 v6, 0x50

    invoke-static {p1, v6}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v2

    iget-object v6, p0, Lcom/dpmods/anime$RealisticBurnView;->random:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    iget-object v7, p0, Lcom/dpmods/anime$RealisticBurnView;->this$0:Lcom/dpmods/anime;

    const/16 v8, 0x28

    invoke-static {v7, v8}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result v7

    int-to-float v7, v7

    mul-float v6, v6, v7

    add-float/2addr p1, v6

    .line 366
    iget-object v6, p0, Lcom/dpmods/anime$RealisticBurnView;->particles:Ljava/util/List;

    new-instance v7, Lcom/dpmods/anime$RealisticBurnView$Particle;

    invoke-direct {v7, p0, v5, p1, v4}, Lcom/dpmods/anime$RealisticBurnView$Particle;-><init>(Lcom/dpmods/anime$RealisticBurnView;FFZ)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 370
    :cond_58
    nop

    .line 371
    const/4 p1, 0x0

    :goto_5a
    const/4 v5, 0x6

    if-lt p1, v5, :cond_5e

    :goto_5d
    return-void

    .line 372
    :cond_5e
    iget-object v5, p0, Lcom/dpmods/anime$RealisticBurnView;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v5

    int-to-double v7, v1

    mul-double v5, v5, v7

    const-wide v7, 0x400921fb54442d18L  # Math.PI

    mul-double v5, v5, v7

    .line 373
    iget v7, p0, Lcom/dpmods/anime$RealisticBurnView;->currentRadius:F

    .line 374
    float-to-double v8, v0

    float-to-double v10, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double v12, v12, v10

    add-double/2addr v8, v12

    double-to-float v7, v8

    .line 375
    float-to-double v8, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v10, v10, v5

    add-double/2addr v8, v10

    double-to-float v5, v8

    .line 376
    iget-object v6, p0, Lcom/dpmods/anime$RealisticBurnView;->random:Ljava/util/Random;

    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    if-eqz v6, :cond_8e

    const/4 v6, 0x0

    goto :goto_8f

    :cond_8e
    const/4 v6, 0x1

    .line 377
    :goto_8f
    iget-object v8, p0, Lcom/dpmods/anime$RealisticBurnView;->particles:Ljava/util/List;

    new-instance v9, Lcom/dpmods/anime$RealisticBurnView$Particle;

    invoke-direct {v9, p0, v7, v5, v6}, Lcom/dpmods/anime$RealisticBurnView$Particle;-><init>(Lcom/dpmods/anime$RealisticBurnView;FFZ)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    add-int/lit8 p1, p1, 0x1

    goto :goto_5a
.end method

.method private updateParticles()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/dpmods/anime$RealisticBurnView;->particles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 384
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    .line 385
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dpmods/anime$RealisticBurnView$Particle;

    .line 386
    invoke-virtual {v1}, Lcom/dpmods/anime$RealisticBurnView$Particle;->update()V

    .line 387
    iget v1, v1, Lcom/dpmods/anime$RealisticBurnView$Particle;->alpha:I

    if-gtz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6
.end method


# virtual methods
.method public ignite()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 249
    new-instance v0, Lcom/dpmods/anime$RealisticBurnView$100000003;

    invoke-direct {v0, p0}, Lcom/dpmods/anime$RealisticBurnView$100000003;-><init>(Lcom/dpmods/anime$RealisticBurnView;)V

    invoke-virtual {p0, v0}, Lcom/dpmods/anime$RealisticBurnView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 287
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 289
    iget-boolean v0, p0, Lcom/dpmods/anime$RealisticBurnView;->isAnimating:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    .line 290
    int-to-float v4, v1

    invoke-virtual {p0}, Lcom/dpmods/anime$RealisticBurnView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/dpmods/anime$RealisticBurnView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/dpmods/anime$RealisticBurnView;->overlayPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 291
    return-void

    .line 295
    :cond_1b
    iget-boolean v0, p0, Lcom/dpmods/anime$RealisticBurnView;->isBurnComplete:Z

    if-eqz v0, :cond_35

    .line 296
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dpmods/anime$RealisticBurnView;->spawnParticles(Z)V

    .line 297
    invoke-direct {p0}, Lcom/dpmods/anime$RealisticBurnView;->updateParticles()V

    .line 298
    iget-object v0, p0, Lcom/dpmods/anime$RealisticBurnView;->particles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 299
    invoke-direct {p0, p1}, Lcom/dpmods/anime$RealisticBurnView;->drawParticles(Landroid/graphics/Canvas;)V

    .line 300
    invoke-virtual {p0}, Lcom/dpmods/anime$RealisticBurnView;->invalidate()V

    .line 302
    :cond_34
    return-void

    .line 305
    :cond_35
    invoke-virtual {p0}, Lcom/dpmods/anime$RealisticBurnView;->getWidth()I

    move-result v0

    .line 306
    invoke-virtual {p0}, Lcom/dpmods/anime$RealisticBurnView;->getHeight()I

    move-result v2

    .line 307
    int-to-float v0, v0

    const/high16 v3, 0x40000000  # 2.0f

    div-float v9, v0, v3

    .line 308
    int-to-float v2, v2

    div-float v10, v2, v3

    .line 310
    int-to-float v1, v1

    const/4 v8, 0x0

    move-object v3, v8

    check-cast v3, Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v1

    move v5, v1

    move v6, v0

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v11

    .line 311
    iget-object v8, p0, Lcom/dpmods/anime$RealisticBurnView;->overlayPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 312
    iget v0, p0, Lcom/dpmods/anime$RealisticBurnView;->currentRadius:F

    iget-object v1, p0, Lcom/dpmods/anime$RealisticBurnView;->this$0:Lcom/dpmods/anime;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/dpmods/anime$RealisticBurnView;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 313
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 315
    iget v0, p0, Lcom/dpmods/anime$RealisticBurnView;->currentRadius:F

    invoke-direct {p0, p1, v9, v10, v0}, Lcom/dpmods/anime$RealisticBurnView;->drawFractalFire(Landroid/graphics/Canvas;FFF)V

    .line 317
    iget-object v0, p0, Lcom/dpmods/anime$RealisticBurnView;->particles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7b

    invoke-direct {p0, p1}, Lcom/dpmods/anime$RealisticBurnView;->drawParticles(Landroid/graphics/Canvas;)V

    :cond_7b
    return-void
.end method
