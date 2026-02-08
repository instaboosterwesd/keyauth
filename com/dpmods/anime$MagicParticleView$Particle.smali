.class Lcom/dpmods/anime$MagicParticleView$Particle;
.super Ljava/lang/Object;
.source "anime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$MagicParticleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "Particle"
.end annotation


# instance fields
.field alpha:I

.field color:I

.field size:F

.field private final this$0:Lcom/dpmods/anime$MagicParticleView;

.field vx:F

.field vy:F

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lcom/dpmods/anime$MagicParticleView;FF)V
    .registers 10

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$MagicParticleView$Particle;->this$0:Lcom/dpmods/anime$MagicParticleView;

    const/16 v0, 0xff

    iput v0, p0, Lcom/dpmods/anime$MagicParticleView$Particle;->alpha:I

    iput p2, p0, Lcom/dpmods/anime$MagicParticleView$Particle;->x:F

    iput p3, p0, Lcom/dpmods/anime$MagicParticleView$Particle;->y:F

    invoke-static {p1}, Lcom/dpmods/anime$MagicParticleView;->access$L1000088(Lcom/dpmods/anime$MagicParticleView;)Ljava/util/Random;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Random;->nextDouble()D

    move-result-wide p2

    const/4 v0, 0x2

    int-to-double v1, v0

    mul-double p2, p2, v1

    const-wide v1, 0x400921fb54442d18L  # Math.PI

    mul-double p2, p2, v1

    invoke-static {p1}, Lcom/dpmods/anime$MagicParticleView;->access$L1000088(Lcom/dpmods/anime$MagicParticleView;)Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/16 v2, 0xa

    int-to-float v2, v2

    mul-float v1, v1, v2

    const/4 v2, 0x5

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    float-to-double v4, v1

    mul-double v2, v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/dpmods/anime$MagicParticleView$Particle;->vx:F

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double p2, p2, v4

    double-to-float p2, p2

    iput p2, p0, Lcom/dpmods/anime$MagicParticleView$Particle;->vy:F

    invoke-static {p1}, Lcom/dpmods/anime$MagicParticleView;->access$L1000088(Lcom/dpmods/anime$MagicParticleView;)Ljava/util/Random;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p2

    const/4 p3, 0x4

    int-to-float p3, p3

    mul-float p2, p2, p3

    int-to-float p3, v0

    add-float/2addr p2, p3

    iput p2, p0, Lcom/dpmods/anime$MagicParticleView$Particle;->size:F

    invoke-static {p1}, Lcom/dpmods/anime$MagicParticleView;->access$L1000088(Lcom/dpmods/anime$MagicParticleView;)Ljava/util/Random;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Random;->nextBoolean()Z

    move-result p2

    invoke-static {p1}, Lcom/dpmods/anime$MagicParticleView;->access$0(Lcom/dpmods/anime$MagicParticleView;)Lcom/dpmods/anime;

    move-result-object p1

    if-eqz p2, :cond_66

    invoke-static {p1}, Lcom/dpmods/anime;->access$L1000042(Lcom/dpmods/anime;)I

    move-result p1

    goto :goto_6a

    :cond_66
    invoke-static {p1}, Lcom/dpmods/anime;->access$L1000043(Lcom/dpmods/anime;)I

    move-result p1

    :goto_6a
    iput p1, p0, Lcom/dpmods/anime$MagicParticleView$Particle;->color:I

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$MagicParticleView$Particle;)Lcom/dpmods/anime$MagicParticleView;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$MagicParticleView$Particle;->this$0:Lcom/dpmods/anime$MagicParticleView;

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

    .line 625
    iget v0, p0, Lcom/dpmods/anime$MagicParticleView$Particle;->x:F

    iget v1, p0, Lcom/dpmods/anime$MagicParticleView$Particle;->vx:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/dpmods/anime$MagicParticleView$Particle;->x:F

    iget v0, p0, Lcom/dpmods/anime$MagicParticleView$Particle;->y:F

    iget v1, p0, Lcom/dpmods/anime$MagicParticleView$Particle;->vy:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/dpmods/anime$MagicParticleView$Particle;->y:F

    iget v0, p0, Lcom/dpmods/anime$MagicParticleView$Particle;->alpha:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/dpmods/anime$MagicParticleView$Particle;->alpha:I

    if-gez v0, :cond_19

    const/4 v0, 0x0

    iput v0, p0, Lcom/dpmods/anime$MagicParticleView$Particle;->alpha:I

    :cond_19
    return-void
.end method
