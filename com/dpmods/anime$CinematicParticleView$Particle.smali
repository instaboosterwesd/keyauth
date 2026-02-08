.class Lcom/dpmods/anime$CinematicParticleView$Particle;
.super Ljava/lang/Object;
.source "anime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$CinematicParticleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "Particle"
.end annotation


# instance fields
.field alpha:I

.field size:F

.field sx:F

.field sy:F

.field private final this$0:Lcom/dpmods/anime$CinematicParticleView;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lcom/dpmods/anime$CinematicParticleView;II)V
    .registers 4

    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$CinematicParticleView$Particle;->this$0:Lcom/dpmods/anime$CinematicParticleView;

    invoke-virtual {p0, p2, p3}, Lcom/dpmods/anime$CinematicParticleView$Particle;->reset(II)V

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$CinematicParticleView$Particle;)Lcom/dpmods/anime$CinematicParticleView;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$CinematicParticleView$Particle;->this$0:Lcom/dpmods/anime$CinematicParticleView;

    return-object p0
.end method


# virtual methods
.method reset(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 889
    iget-object v0, p0, Lcom/dpmods/anime$CinematicParticleView$Particle;->this$0:Lcom/dpmods/anime$CinematicParticleView;

    invoke-static {v0}, Lcom/dpmods/anime$CinematicParticleView;->access$L1000086(Lcom/dpmods/anime$CinematicParticleView;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    int-to-float p1, p1

    mul-float v0, v0, p1

    iput v0, p0, Lcom/dpmods/anime$CinematicParticleView$Particle;->x:F

    iget-object p1, p0, Lcom/dpmods/anime$CinematicParticleView$Particle;->this$0:Lcom/dpmods/anime$CinematicParticleView;

    invoke-static {p1}, Lcom/dpmods/anime$CinematicParticleView;->access$L1000086(Lcom/dpmods/anime$CinematicParticleView;)Ljava/util/Random;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    int-to-float p2, p2

    mul-float p1, p1, p2

    iput p1, p0, Lcom/dpmods/anime$CinematicParticleView$Particle;->y:F

    .line 890
    iget-object p1, p0, Lcom/dpmods/anime$CinematicParticleView$Particle;->this$0:Lcom/dpmods/anime$CinematicParticleView;

    invoke-static {p1}, Lcom/dpmods/anime$CinematicParticleView;->access$0(Lcom/dpmods/anime$CinematicParticleView;)Lcom/dpmods/anime;

    move-result-object p1

    const/high16 p2, 0x3f000000  # 0.5f

    invoke-static {p1, p2}, Lcom/dpmods/anime;->access$1000076(Lcom/dpmods/anime;F)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/dpmods/anime$CinematicParticleView$Particle;->this$0:Lcom/dpmods/anime$CinematicParticleView;

    invoke-static {p2}, Lcom/dpmods/anime$CinematicParticleView;->access$L1000086(Lcom/dpmods/anime$CinematicParticleView;)Ljava/util/Random;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p2

    iget-object v0, p0, Lcom/dpmods/anime$CinematicParticleView$Particle;->this$0:Lcom/dpmods/anime$CinematicParticleView;

    invoke-static {v0}, Lcom/dpmods/anime$CinematicParticleView;->access$0(Lcom/dpmods/anime$CinematicParticleView;)Lcom/dpmods/anime;

    move-result-object v0

    const/high16 v1, 0x3fc00000  # 1.5f

    invoke-static {v0, v1}, Lcom/dpmods/anime;->access$1000076(Lcom/dpmods/anime;F)I

    move-result v0

    int-to-float v0, v0

    mul-float p2, p2, v0

    add-float/2addr p1, p2

    iput p1, p0, Lcom/dpmods/anime$CinematicParticleView$Particle;->size:F

    .line 891
    iget-object p1, p0, Lcom/dpmods/anime$CinematicParticleView$Particle;->this$0:Lcom/dpmods/anime$CinematicParticleView;

    invoke-static {p1}, Lcom/dpmods/anime$CinematicParticleView;->access$L1000086(Lcom/dpmods/anime$CinematicParticleView;)Ljava/util/Random;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const p2, 0x3e99999a  # 0.3f

    mul-float p1, p1, p2

    const p2, 0x3dcccccd  # 0.1f

    add-float/2addr p1, p2

    neg-float p1, p1

    iput p1, p0, Lcom/dpmods/anime$CinematicParticleView$Particle;->sy:F

    iget-object p1, p0, Lcom/dpmods/anime$CinematicParticleView$Particle;->this$0:Lcom/dpmods/anime$CinematicParticleView;

    invoke-static {p1}, Lcom/dpmods/anime$CinematicParticleView;->access$L1000086(Lcom/dpmods/anime$CinematicParticleView;)Ljava/util/Random;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const p2, 0x3e4ccccd  # 0.2f

    mul-float p1, p1, p2

    const p2, -0x42333333  # -0.1f

    add-float/2addr p1, p2

    iput p1, p0, Lcom/dpmods/anime$CinematicParticleView$Particle;->sx:F

    .line 892
    iget-object p1, p0, Lcom/dpmods/anime$CinematicParticleView$Particle;->this$0:Lcom/dpmods/anime$CinematicParticleView;

    invoke-static {p1}, Lcom/dpmods/anime$CinematicParticleView;->access$L1000086(Lcom/dpmods/anime$CinematicParticleView;)Ljava/util/Random;

    move-result-object p1

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x28

    iput p1, p0, Lcom/dpmods/anime$CinematicParticleView$Particle;->alpha:I

    return-void
.end method

.method update(II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 894
    iget v0, p0, Lcom/dpmods/anime$CinematicParticleView$Particle;->x:F

    iget v1, p0, Lcom/dpmods/anime$CinematicParticleView$Particle;->sx:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/dpmods/anime$CinematicParticleView$Particle;->x:F

    iget v1, p0, Lcom/dpmods/anime$CinematicParticleView$Particle;->y:F

    iget v2, p0, Lcom/dpmods/anime$CinematicParticleView$Particle;->sy:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/dpmods/anime$CinematicParticleView$Particle;->y:F

    iget v2, p0, Lcom/dpmods/anime$CinematicParticleView$Particle;->size:F

    neg-float v3, v2

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_20

    neg-float v1, v2

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_20

    int-to-float v1, p1

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_29

    :cond_20
    invoke-virtual {p0, p1, p2}, Lcom/dpmods/anime$CinematicParticleView$Particle;->reset(II)V

    int-to-float p1, p2

    iget p2, p0, Lcom/dpmods/anime$CinematicParticleView$Particle;->size:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/dpmods/anime$CinematicParticleView$Particle;->y:F

    :cond_29
    return-void
.end method
