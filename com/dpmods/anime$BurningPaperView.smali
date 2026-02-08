.class Lcom/dpmods/anime$BurningPaperView;
.super Landroid/view/View;
.source "anime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "BurningPaperView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dpmods/anime$BurningPaperView$100000003;,
        Lcom/dpmods/anime$BurningPaperView$Particle;
    }
.end annotation


# instance fields
.field private charPaint:Landroid/graphics/Paint;

.field private currentRadius:F

.field private firePaint:Landroid/graphics/Paint;

.field private firePath:Landroid/graphics/Path;

.field private isAnimating:Z

.field private maxRadius:F

.field private paperPaint:Landroid/graphics/Paint;

.field private particlePaint:Landroid/graphics/Paint;

.field private particles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dpmods/anime$BurningPaperView$Particle;",
            ">;"
        }
    .end annotation
.end field

.field private random:Ljava/util/Random;

.field private final this$0:Lcom/dpmods/anime;


# direct methods
.method public constructor <init>(Lcom/dpmods/anime;Landroid/content/Context;)V
    .registers 3

    .line 155
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dpmods/anime$BurningPaperView;->this$0:Lcom/dpmods/anime;

    const/4 p1, 0x0

    iput p1, p0, Lcom/dpmods/anime$BurningPaperView;->currentRadius:F

    iput p1, p0, Lcom/dpmods/anime$BurningPaperView;->maxRadius:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dpmods/anime$BurningPaperView;->isAnimating:Z

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$BurningPaperView;->random:Ljava/util/Random;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$BurningPaperView;->particles:Ljava/util/List;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$BurningPaperView;->firePath:Landroid/graphics/Path;

    .line 156
    invoke-direct {p0}, Lcom/dpmods/anime$BurningPaperView;->init()V

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$BurningPaperView;)Lcom/dpmods/anime;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$BurningPaperView;->this$0:Lcom/dpmods/anime;

    return-object p0
.end method

.method static synthetic access$1000020(Lcom/dpmods/anime$BurningPaperView;)V
    .registers 1

    invoke-direct {p0}, Lcom/dpmods/anime$BurningPaperView;->spawnParticles()V

    return-void
.end method

.method static synthetic access$1000021(Lcom/dpmods/anime$BurningPaperView;)V
    .registers 1

    invoke-direct {p0}, Lcom/dpmods/anime$BurningPaperView;->updateParticles()V

    return-void
.end method

.method static synthetic access$L1000009(Lcom/dpmods/anime$BurningPaperView;)F
    .registers 1

    iget p0, p0, Lcom/dpmods/anime$BurningPaperView;->currentRadius:F

    return p0
.end method

.method static synthetic access$L1000010(Lcom/dpmods/anime$BurningPaperView;)F
    .registers 1

    iget p0, p0, Lcom/dpmods/anime$BurningPaperView;->maxRadius:F

    return p0
.end method

.method static synthetic access$L1000011(Lcom/dpmods/anime$BurningPaperView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/dpmods/anime$BurningPaperView;->isAnimating:Z

    return p0
.end method

.method static synthetic access$L1000012(Lcom/dpmods/anime$BurningPaperView;)Ljava/util/Random;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$BurningPaperView;->random:Ljava/util/Random;

    return-object p0
.end method

.method static synthetic access$S1000009(Lcom/dpmods/anime$BurningPaperView;F)V
    .registers 2

    iput p1, p0, Lcom/dpmods/anime$BurningPaperView;->currentRadius:F

    return-void
.end method

.method static synthetic access$S1000010(Lcom/dpmods/anime$BurningPaperView;F)V
    .registers 2

    iput p1, p0, Lcom/dpmods/anime$BurningPaperView;->maxRadius:F

    return-void
.end method

.method static synthetic access$S1000011(Lcom/dpmods/anime$BurningPaperView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/dpmods/anime$BurningPaperView;->isAnimating:Z

    return-void
.end method

.method static synthetic access$S1000012(Lcom/dpmods/anime$BurningPaperView;Ljava/util/Random;)V
    .registers 2

    iput-object p1, p0, Lcom/dpmods/anime$BurningPaperView;->random:Ljava/util/Random;

    return-void
.end method

.method private drawFireRing(Landroid/graphics/Canvas;FFF)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FFF)V"
        }
    .end annotation

    .line 261
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lcom/dpmods/anime$BurningPaperView;->this$0:Lcom/dpmods/anime;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result v4

    int-to-float v4, v4

    add-float v4, p4, v4

    iget-object v5, v0, Lcom/dpmods/anime$BurningPaperView;->charPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 264
    iget-object v4, v0, Lcom/dpmods/anime$BurningPaperView;->firePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 265
    nop

    .line 266
    const-wide v4, 0x401921fb54442d18L  # 6.283185307179586

    const/16 v6, 0x3c

    int-to-double v7, v6

    div-double/2addr v4, v7

    .line 268
    const/4 v7, 0x0

    :goto_27
    if-le v7, v6, :cond_36

    .line 280
    iget-object v2, v0, Lcom/dpmods/anime$BurningPaperView;->firePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 281
    iget-object v2, v0, Lcom/dpmods/anime$BurningPaperView;->firePath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/dpmods/anime$BurningPaperView;->firePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    .line 269
    :cond_36
    int-to-double v8, v7

    mul-double v8, v8, v4

    .line 271
    iget-object v10, v0, Lcom/dpmods/anime$BurningPaperView;->this$0:Lcom/dpmods/anime;

    const/4 v11, 0x5

    invoke-static {v10, v11}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result v10

    neg-int v10, v10

    iget-object v11, v0, Lcom/dpmods/anime$BurningPaperView;->random:Ljava/util/Random;

    iget-object v12, v0, Lcom/dpmods/anime$BurningPaperView;->this$0:Lcom/dpmods/anime;

    const/16 v13, 0xa

    invoke-static {v12, v13}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    .line 272
    add-float v10, p4, v10

    .line 274
    float-to-double v11, v2

    float-to-double v13, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double v15, v15, v13

    add-double/2addr v11, v15

    double-to-float v10, v11

    .line 275
    float-to-double v11, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v13, v13, v8

    add-double/2addr v11, v13

    double-to-float v8, v11

    .line 277
    if-nez v7, :cond_6e

    iget-object v9, v0, Lcom/dpmods/anime$BurningPaperView;->firePath:Landroid/graphics/Path;

    invoke-virtual {v9, v10, v8}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_73

    .line 278
    :cond_6e
    iget-object v9, v0, Lcom/dpmods/anime$BurningPaperView;->firePath:Landroid/graphics/Path;

    invoke-virtual {v9, v10, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 268
    :goto_73
    add-int/lit8 v7, v7, 0x1

    goto :goto_27
.end method

.method private init()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 161
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/dpmods/anime$BurningPaperView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 164
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dpmods/anime$BurningPaperView;->paperPaint:Landroid/graphics/Paint;

    .line 165
    const-string v2, "#F0E68C"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dpmods/anime$BurningPaperView;->firePaint:Landroid/graphics/Paint;

    .line 169
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 170
    iget-object v0, p0, Lcom/dpmods/anime$BurningPaperView;->firePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/dpmods/anime$BurningPaperView;->this$0:Lcom/dpmods/anime;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 171
    iget-object v0, p0, Lcom/dpmods/anime$BurningPaperView;->firePaint:Landroid/graphics/Paint;

    const-string v2, "#FF4500"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dpmods/anime$BurningPaperView;->charPaint:Landroid/graphics/Paint;

    .line 175
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 176
    iget-object v0, p0, Lcom/dpmods/anime$BurningPaperView;->charPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/dpmods/anime$BurningPaperView;->this$0:Lcom/dpmods/anime;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 177
    iget-object v0, p0, Lcom/dpmods/anime$BurningPaperView;->charPaint:Landroid/graphics/Paint;

    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dpmods/anime$BurningPaperView;->particlePaint:Landroid/graphics/Paint;

    .line 181
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private spawnParticles()V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 286
    nop

    .line 287
    invoke-virtual {p0}, Lcom/dpmods/anime$BurningPaperView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    .line 288
    invoke-virtual {p0}, Lcom/dpmods/anime$BurningPaperView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 290
    const/4 v1, 0x0

    :goto_10
    const/4 v3, 0x5

    if-lt v1, v3, :cond_14

    return-void

    .line 291
    :cond_14
    iget-object v3, p0, Lcom/dpmods/anime$BurningPaperView;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    const/4 v5, 0x2

    int-to-double v5, v5

    mul-double v3, v3, v5

    const-wide v5, 0x400921fb54442d18L  # Math.PI

    mul-double v3, v3, v5

    .line 292
    iget v5, p0, Lcom/dpmods/anime$BurningPaperView;->currentRadius:F

    .line 294
    float-to-double v6, v0

    float-to-double v8, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double v10, v10, v8

    add-double/2addr v6, v10

    double-to-float v5, v6

    .line 295
    float-to-double v6, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v8, v8, v3

    add-double/2addr v6, v8

    double-to-float v3, v6

    .line 297
    iget-object v4, p0, Lcom/dpmods/anime$BurningPaperView;->particles:Ljava/util/List;

    new-instance v6, Lcom/dpmods/anime$BurningPaperView$Particle;

    invoke-direct {v6, p0, v5, v3}, Lcom/dpmods/anime$BurningPaperView$Particle;-><init>(Lcom/dpmods/anime$BurningPaperView;FF)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method private updateParticles()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/dpmods/anime$BurningPaperView;->particles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 303
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    .line 304
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dpmods/anime$BurningPaperView$Particle;

    .line 305
    invoke-virtual {v1}, Lcom/dpmods/anime$BurningPaperView$Particle;->update()V

    .line 306
    iget v1, v1, Lcom/dpmods/anime$BurningPaperView$Particle;->alpha:I

    if-gtz v1, :cond_6

    .line 307
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6
.end method


# virtual methods
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

    .line 222
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 224
    invoke-virtual {p0}, Lcom/dpmods/anime$BurningPaperView;->getWidth()I

    move-result v0

    .line 225
    invoke-virtual {p0}, Lcom/dpmods/anime$BurningPaperView;->getHeight()I

    move-result v1

    .line 226
    int-to-float v0, v0

    const/high16 v2, 0x40000000  # 2.0f

    div-float v8, v0, v2

    .line 227
    int-to-float v1, v1

    div-float v9, v1, v2

    .line 229
    iget-boolean v2, p0, Lcom/dpmods/anime$BurningPaperView;->isAnimating:Z

    const/4 v3, 0x0

    if-nez v2, :cond_23

    .line 231
    int-to-float v4, v3

    iget-object v7, p0, Lcom/dpmods/anime$BurningPaperView;->paperPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v4

    move v5, v0

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 232
    return-void

    .line 237
    :cond_23
    int-to-float v10, v3

    const/4 v7, 0x0

    move-object v2, v7

    check-cast v2, Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v10

    move v4, v10

    move v5, v0

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v11

    .line 238
    iget-object v7, p0, Lcom/dpmods/anime$BurningPaperView;->paperPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 240
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 241
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 242
    iget v1, p0, Lcom/dpmods/anime$BurningPaperView;->currentRadius:F

    invoke-virtual {p1, v8, v9, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 244
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 247
    iget v0, p0, Lcom/dpmods/anime$BurningPaperView;->currentRadius:F

    cmpl-float v1, v0, v10

    if-lez v1, :cond_5c

    iget v1, p0, Lcom/dpmods/anime$BurningPaperView;->maxRadius:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5c

    .line 248
    invoke-direct {p0, p1, v8, v9, v0}, Lcom/dpmods/anime$BurningPaperView;->drawFireRing(Landroid/graphics/Canvas;FFF)V

    .line 252
    :cond_5c
    iget-object v0, p0, Lcom/dpmods/anime$BurningPaperView;->particles:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 255
    :goto_64
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6b

    return-void

    .line 252
    :cond_6b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dpmods/anime$BurningPaperView$Particle;

    .line 253
    iget-object v2, p0, Lcom/dpmods/anime$BurningPaperView;->particlePaint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/dpmods/anime$BurningPaperView$Particle;->color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 254
    iget-object v2, p0, Lcom/dpmods/anime$BurningPaperView;->particlePaint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/dpmods/anime$BurningPaperView$Particle;->alpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 255
    iget v2, v1, Lcom/dpmods/anime$BurningPaperView$Particle;->x:F

    iget v3, v1, Lcom/dpmods/anime$BurningPaperView$Particle;->y:F

    iget v1, v1, Lcom/dpmods/anime$BurningPaperView$Particle;->size:F

    iget-object v4, p0, Lcom/dpmods/anime$BurningPaperView;->particlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_64
.end method

.method public startBurn()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 186
    new-instance v0, Lcom/dpmods/anime$BurningPaperView$100000003;

    invoke-direct {v0, p0}, Lcom/dpmods/anime$BurningPaperView$100000003;-><init>(Lcom/dpmods/anime$BurningPaperView;)V

    invoke-virtual {p0, v0}, Lcom/dpmods/anime$BurningPaperView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
