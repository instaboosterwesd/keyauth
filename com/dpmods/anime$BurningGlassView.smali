.class Lcom/dpmods/anime$BurningGlassView;
.super Landroid/view/View;
.source "anime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "BurningGlassView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dpmods/anime$BurningGlassView$100000003;,
        Lcom/dpmods/anime$BurningGlassView$Particle;
    }
.end annotation


# instance fields
.field private clearPaint:Landroid/graphics/Paint;

.field private currentRadius:F

.field private fireEdgePaint:Landroid/graphics/Paint;

.field private firePath:Landroid/graphics/Path;

.field private glassPaint:Landroid/graphics/Paint;

.field private glowPaint:Landroid/graphics/Paint;

.field private isAnimating:Z

.field private maxRadius:F

.field private particlePaint:Landroid/graphics/Paint;

.field private particles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dpmods/anime$BurningGlassView$Particle;",
            ">;"
        }
    .end annotation
.end field

.field private random:Ljava/util/Random;

.field private final this$0:Lcom/dpmods/anime;


# direct methods
.method public constructor <init>(Lcom/dpmods/anime;Landroid/content/Context;)V
    .registers 3

    .line 165
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dpmods/anime$BurningGlassView;->this$0:Lcom/dpmods/anime;

    const/4 p1, 0x0

    iput p1, p0, Lcom/dpmods/anime$BurningGlassView;->currentRadius:F

    iput p1, p0, Lcom/dpmods/anime$BurningGlassView;->maxRadius:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dpmods/anime$BurningGlassView;->isAnimating:Z

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$BurningGlassView;->random:Ljava/util/Random;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$BurningGlassView;->particles:Ljava/util/List;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$BurningGlassView;->firePath:Landroid/graphics/Path;

    .line 166
    invoke-direct {p0}, Lcom/dpmods/anime$BurningGlassView;->init()V

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$BurningGlassView;)Lcom/dpmods/anime;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$BurningGlassView;->this$0:Lcom/dpmods/anime;

    return-object p0
.end method

.method static synthetic access$1000021(Lcom/dpmods/anime$BurningGlassView;)V
    .registers 1

    invoke-direct {p0}, Lcom/dpmods/anime$BurningGlassView;->spawnParticles()V

    return-void
.end method

.method static synthetic access$1000022(Lcom/dpmods/anime$BurningGlassView;)V
    .registers 1

    invoke-direct {p0}, Lcom/dpmods/anime$BurningGlassView;->updateParticles()V

    return-void
.end method

.method static synthetic access$L1000010(Lcom/dpmods/anime$BurningGlassView;)F
    .registers 1

    iget p0, p0, Lcom/dpmods/anime$BurningGlassView;->currentRadius:F

    return p0
.end method

.method static synthetic access$L1000011(Lcom/dpmods/anime$BurningGlassView;)F
    .registers 1

    iget p0, p0, Lcom/dpmods/anime$BurningGlassView;->maxRadius:F

    return p0
.end method

.method static synthetic access$L1000012(Lcom/dpmods/anime$BurningGlassView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/dpmods/anime$BurningGlassView;->isAnimating:Z

    return p0
.end method

.method static synthetic access$L1000013(Lcom/dpmods/anime$BurningGlassView;)Ljava/util/Random;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$BurningGlassView;->random:Ljava/util/Random;

    return-object p0
.end method

.method static synthetic access$S1000010(Lcom/dpmods/anime$BurningGlassView;F)V
    .registers 2

    iput p1, p0, Lcom/dpmods/anime$BurningGlassView;->currentRadius:F

    return-void
.end method

.method static synthetic access$S1000011(Lcom/dpmods/anime$BurningGlassView;F)V
    .registers 2

    iput p1, p0, Lcom/dpmods/anime$BurningGlassView;->maxRadius:F

    return-void
.end method

.method static synthetic access$S1000012(Lcom/dpmods/anime$BurningGlassView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/dpmods/anime$BurningGlassView;->isAnimating:Z

    return-void
.end method

.method static synthetic access$S1000013(Lcom/dpmods/anime$BurningGlassView;Ljava/util/Random;)V
    .registers 2

    iput-object p1, p0, Lcom/dpmods/anime$BurningGlassView;->random:Ljava/util/Random;

    return-void
.end method

.method private drawJaggedRing(Landroid/graphics/Canvas;FFF)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FFF)V"
        }
    .end annotation

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dpmods/anime$BurningGlassView;->firePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 273
    nop

    .line 274
    const-wide v1, 0x401921fb54442d18L  # 6.283185307179586

    const/16 v3, 0x5a

    int-to-double v4, v3

    div-double/2addr v1, v4

    .line 276
    const/4 v4, 0x0

    :goto_12
    if-le v4, v3, :cond_23

    .line 288
    iget-object v1, v0, Lcom/dpmods/anime$BurningGlassView;->firePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 289
    iget-object v1, v0, Lcom/dpmods/anime$BurningGlassView;->firePath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/dpmods/anime$BurningGlassView;->fireEdgePaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    .line 277
    :cond_23
    move-object/from16 v5, p1

    int-to-double v6, v4

    mul-double v6, v6, v1

    .line 279
    iget-object v8, v0, Lcom/dpmods/anime$BurningGlassView;->this$0:Lcom/dpmods/anime;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result v8

    neg-int v8, v8

    iget-object v9, v0, Lcom/dpmods/anime$BurningGlassView;->random:Ljava/util/Random;

    iget-object v10, v0, Lcom/dpmods/anime$BurningGlassView;->this$0:Lcom/dpmods/anime;

    const/4 v11, 0x5

    invoke-static {v10, v11}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    .line 280
    add-float v8, p4, v8

    .line 282
    move/from16 v9, p2

    float-to-double v10, v9

    float-to-double v12, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double v14, v14, v12

    add-double/2addr v10, v14

    double-to-float v8, v10

    .line 283
    move/from16 v10, p3

    float-to-double v14, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v12, v12, v6

    add-double/2addr v14, v12

    double-to-float v6, v14

    .line 285
    if-nez v4, :cond_60

    iget-object v7, v0, Lcom/dpmods/anime$BurningGlassView;->firePath:Landroid/graphics/Path;

    invoke-virtual {v7, v8, v6}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_65

    .line 286
    :cond_60
    iget-object v7, v0, Lcom/dpmods/anime$BurningGlassView;->firePath:Landroid/graphics/Path;

    invoke-virtual {v7, v8, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 276
    :goto_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_12
.end method

.method private init()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 170
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/dpmods/anime$BurningGlassView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 173
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dpmods/anime$BurningGlassView;->glassPaint:Landroid/graphics/Paint;

    .line 174
    const-string v2, "#E61A1A1A"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dpmods/anime$BurningGlassView;->clearPaint:Landroid/graphics/Paint;

    .line 178
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 181
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dpmods/anime$BurningGlassView;->fireEdgePaint:Landroid/graphics/Paint;

    .line 182
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 183
    iget-object v0, p0, Lcom/dpmods/anime$BurningGlassView;->fireEdgePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/dpmods/anime$BurningGlassView;->this$0:Lcom/dpmods/anime;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 184
    iget-object v0, p0, Lcom/dpmods/anime$BurningGlassView;->fireEdgePaint:Landroid/graphics/Paint;

    const-string v2, "#FF5722"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    iget-object v0, p0, Lcom/dpmods/anime$BurningGlassView;->fireEdgePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/dpmods/anime$BurningGlassView;->this$0:Lcom/dpmods/anime;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    int-to-float v3, v3

    const/high16 v4, -0x10000

    invoke-virtual {v0, v2, v3, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 189
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dpmods/anime$BurningGlassView;->particlePaint:Landroid/graphics/Paint;

    .line 190
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private spawnParticles()V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 294
    nop

    .line 295
    invoke-virtual {p0}, Lcom/dpmods/anime$BurningGlassView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    .line 296
    invoke-virtual {p0}, Lcom/dpmods/anime$BurningGlassView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 298
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_11
    const/4 v4, 0x4

    if-lt v3, v4, :cond_15

    return-void

    .line 299
    :cond_15
    iget-object v4, p0, Lcom/dpmods/anime$BurningGlassView;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    const/4 v6, 0x2

    int-to-double v6, v6

    mul-double v4, v4, v6

    const-wide v6, 0x400921fb54442d18L  # Math.PI

    mul-double v4, v4, v6

    .line 300
    iget v6, p0, Lcom/dpmods/anime$BurningGlassView;->currentRadius:F

    .line 302
    float-to-double v7, v0

    float-to-double v9, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v11, v11, v9

    add-double/2addr v7, v11

    double-to-float v6, v7

    .line 303
    float-to-double v7, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v9, v9, v4

    add-double/2addr v7, v9

    double-to-float v4, v7

    .line 306
    iget-object v5, p0, Lcom/dpmods/anime$BurningGlassView;->random:Ljava/util/Random;

    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-eqz v5, :cond_46

    const/4 v5, 0x0

    goto :goto_47

    :cond_46
    const/4 v5, 0x1

    .line 307
    :goto_47
    iget-object v7, p0, Lcom/dpmods/anime$BurningGlassView;->particles:Ljava/util/List;

    new-instance v8, Lcom/dpmods/anime$BurningGlassView$Particle;

    invoke-direct {v8, p0, v6, v4, v5}, Lcom/dpmods/anime$BurningGlassView$Particle;-><init>(Lcom/dpmods/anime$BurningGlassView;FFZ)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v3, v3, 0x1

    goto :goto_11
.end method

.method private updateParticles()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/dpmods/anime$BurningGlassView;->particles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 313
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    .line 314
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dpmods/anime$BurningGlassView$Particle;

    .line 315
    invoke-virtual {v1}, Lcom/dpmods/anime$BurningGlassView$Particle;->update()V

    .line 316
    iget v1, v1, Lcom/dpmods/anime$BurningGlassView$Particle;->alpha:I

    if-gtz v1, :cond_6

    .line 317
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

    .line 194
    new-instance v0, Lcom/dpmods/anime$BurningGlassView$100000003;

    invoke-direct {v0, p0}, Lcom/dpmods/anime$BurningGlassView$100000003;-><init>(Lcom/dpmods/anime$BurningGlassView;)V

    invoke-virtual {p0, v0}, Lcom/dpmods/anime$BurningGlassView;->post(Ljava/lang/Runnable;)Z

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

    .line 232
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 234
    iget-boolean v0, p0, Lcom/dpmods/anime$BurningGlassView;->isAnimating:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    .line 235
    int-to-float v4, v1

    invoke-virtual {p0}, Lcom/dpmods/anime$BurningGlassView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/dpmods/anime$BurningGlassView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/dpmods/anime$BurningGlassView;->glassPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 236
    return-void

    .line 239
    :cond_1b
    invoke-virtual {p0}, Lcom/dpmods/anime$BurningGlassView;->getWidth()I

    move-result v0

    .line 240
    invoke-virtual {p0}, Lcom/dpmods/anime$BurningGlassView;->getHeight()I

    move-result v2

    .line 241
    int-to-float v0, v0

    const/high16 v3, 0x40000000  # 2.0f

    div-float v9, v0, v3

    .line 242
    int-to-float v2, v2

    div-float v10, v2, v3

    .line 245
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

    .line 246
    iget-object v8, p0, Lcom/dpmods/anime$BurningGlassView;->glassPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 249
    iget v0, p0, Lcom/dpmods/anime$BurningGlassView;->currentRadius:F

    iget-object v1, p0, Lcom/dpmods/anime$BurningGlassView;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 250
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 253
    iget v0, p0, Lcom/dpmods/anime$BurningGlassView;->currentRadius:F

    iget v1, p0, Lcom/dpmods/anime$BurningGlassView;->maxRadius:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_53

    .line 254
    invoke-direct {p0, p1, v9, v10, v0}, Lcom/dpmods/anime$BurningGlassView;->drawJaggedRing(Landroid/graphics/Canvas;FFF)V

    .line 258
    :cond_53
    iget-object v0, p0, Lcom/dpmods/anime$BurningGlassView;->particles:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 261
    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_78

    .line 265
    iget p1, p0, Lcom/dpmods/anime$BurningGlassView;->currentRadius:F

    iget v0, p0, Lcom/dpmods/anime$BurningGlassView;->maxRadius:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_77

    iget-object p1, p0, Lcom/dpmods/anime$BurningGlassView;->particles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_77

    .line 266
    invoke-direct {p0}, Lcom/dpmods/anime$BurningGlassView;->updateParticles()V

    .line 267
    invoke-virtual {p0}, Lcom/dpmods/anime$BurningGlassView;->invalidate()V

    :cond_77
    return-void

    .line 258
    :cond_78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dpmods/anime$BurningGlassView$Particle;

    .line 259
    iget-object v2, p0, Lcom/dpmods/anime$BurningGlassView;->particlePaint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/dpmods/anime$BurningGlassView$Particle;->color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    iget-object v2, p0, Lcom/dpmods/anime$BurningGlassView;->particlePaint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/dpmods/anime$BurningGlassView$Particle;->alpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 261
    iget v2, v1, Lcom/dpmods/anime$BurningGlassView$Particle;->x:F

    iget v3, v1, Lcom/dpmods/anime$BurningGlassView$Particle;->y:F

    iget v1, v1, Lcom/dpmods/anime$BurningGlassView$Particle;->size:F

    iget-object v4, p0, Lcom/dpmods/anime$BurningGlassView;->particlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_5b
.end method
