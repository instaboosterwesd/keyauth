.class Lcom/dpmods/anime$BurningGlassView$Particle;
.super Ljava/lang/Object;
.source "anime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$BurningGlassView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "Particle"
.end annotation


# instance fields
.field alpha:I

.field color:I

.field isSmoke:Z

.field size:F

.field speedX:F

.field speedY:F

.field private final this$0:Lcom/dpmods/anime$BurningGlassView;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lcom/dpmods/anime$BurningGlassView;FFZ)V
    .registers 7

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->this$0:Lcom/dpmods/anime$BurningGlassView;

    .line 333
    iput p2, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->x:F

    .line 334
    iput p3, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->y:F

    .line 335
    iput-boolean p4, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->isSmoke:Z

    .line 337
    const/4 p2, 0x1

    const/4 p3, 0x2

    if-eqz p4, :cond_57

    .line 339
    invoke-static {p1}, Lcom/dpmods/anime$BurningGlassView;->access$0(Lcom/dpmods/anime$BurningGlassView;)Lcom/dpmods/anime;

    move-result-object p4

    invoke-static {p4, p3}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result p4

    int-to-float p4, p4

    invoke-static {p1}, Lcom/dpmods/anime$BurningGlassView;->access$L1000013(Lcom/dpmods/anime$BurningGlassView;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    invoke-static {p1}, Lcom/dpmods/anime$BurningGlassView;->access$0(Lcom/dpmods/anime$BurningGlassView;)Lcom/dpmods/anime;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result p3

    int-to-float p3, p3

    mul-float v0, v0, p3

    add-float/2addr p4, v0

    iput p4, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->size:F

    .line 340
    invoke-static {p1}, Lcom/dpmods/anime$BurningGlassView;->access$0(Lcom/dpmods/anime$BurningGlassView;)Lcom/dpmods/anime;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x3f000000  # 0.5f

    mul-float p2, p2, p3

    iput p2, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->speedY:F

    .line 341
    invoke-static {p1}, Lcom/dpmods/anime$BurningGlassView;->access$L1000013(Lcom/dpmods/anime$BurningGlassView;)Ljava/util/Random;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const/high16 p2, -0x41000000  # -0.5f

    add-float/2addr p1, p2

    iput p1, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->speedX:F

    .line 342
    const-string p1, "#888888"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->color:I

    .line 343
    const/16 p1, 0x96

    iput p1, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->alpha:I

    goto :goto_be

    .line 346
    :cond_57
    invoke-static {p1}, Lcom/dpmods/anime$BurningGlassView;->access$0(Lcom/dpmods/anime$BurningGlassView;)Lcom/dpmods/anime;

    move-result-object p4

    invoke-static {p4, p2}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result p4

    int-to-float p4, p4

    invoke-static {p1}, Lcom/dpmods/anime$BurningGlassView;->access$L1000013(Lcom/dpmods/anime$BurningGlassView;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    invoke-static {p1}, Lcom/dpmods/anime$BurningGlassView;->access$0(Lcom/dpmods/anime$BurningGlassView;)Lcom/dpmods/anime;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result p2

    int-to-float p2, p2

    mul-float v0, v0, p2

    add-float/2addr p4, v0

    iput p4, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->size:F

    .line 347
    invoke-static {p1}, Lcom/dpmods/anime$BurningGlassView;->access$0(Lcom/dpmods/anime$BurningGlassView;)Lcom/dpmods/anime;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1}, Lcom/dpmods/anime$BurningGlassView;->access$L1000013(Lcom/dpmods/anime$BurningGlassView;)Ljava/util/Random;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/Random;->nextFloat()F

    move-result p4

    invoke-static {p1}, Lcom/dpmods/anime$BurningGlassView;->access$0(Lcom/dpmods/anime$BurningGlassView;)Lcom/dpmods/anime;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result v0

    int-to-float v0, v0

    mul-float p4, p4, v0

    add-float/2addr p2, p4

    iput p2, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->speedY:F

    .line 348
    const/4 p2, -0x1

    int-to-float p2, p2

    invoke-static {p1}, Lcom/dpmods/anime$BurningGlassView;->access$L1000013(Lcom/dpmods/anime$BurningGlassView;)Ljava/util/Random;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/Random;->nextFloat()F

    move-result p4

    int-to-float p3, p3

    mul-float p4, p4, p3

    add-float/2addr p2, p4

    iput p2, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->speedX:F

    .line 351
    invoke-static {p1}, Lcom/dpmods/anime$BurningGlassView;->access$L1000013(Lcom/dpmods/anime$BurningGlassView;)Ljava/util/Random;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Random;->nextBoolean()Z

    move-result p1

    if-eqz p1, :cond_b2

    const-string p1, "#FFD700"

    goto :goto_b4

    :cond_b2
    const-string p1, "#FF4500"

    :goto_b4
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->color:I

    .line 352
    const/16 p1, 0xff

    iput p1, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->alpha:I

    :goto_be
    return-void
.end method

.method static access$0(Lcom/dpmods/anime$BurningGlassView$Particle;)Lcom/dpmods/anime$BurningGlassView;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->this$0:Lcom/dpmods/anime$BurningGlassView;

    return-object p0
.end method


# virtual methods
.method update()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 357
    iget v0, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->x:F

    iget v1, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->speedX:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->x:F

    .line 358
    iget v0, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->y:F

    iget v1, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->speedY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->y:F

    .line 360
    iget-boolean v0, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->isSmoke:Z

    if-eqz v0, :cond_21

    .line 361
    iget v0, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->alpha:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->alpha:I

    .line 362
    iget v0, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->size:F

    const v1, 0x3d4ccccd  # 0.05f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->size:F

    goto :goto_27

    .line 364
    :cond_21
    iget v0, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->alpha:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->alpha:I

    .line 367
    :goto_27
    iget v0, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->alpha:I

    if-gez v0, :cond_2e

    const/4 v0, 0x0

    iput v0, p0, Lcom/dpmods/anime$BurningGlassView$Particle;->alpha:I

    :cond_2e
    return-void
.end method
