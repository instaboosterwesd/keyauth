.class Lcom/dpmods/anime$MagicParticleView$100000008;
.super Ljava/lang/Object;
.source "anime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$MagicParticleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000008"
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime$MagicParticleView;


# direct methods
.method constructor <init>(Lcom/dpmods/anime$MagicParticleView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$MagicParticleView$100000008;->this$0:Lcom/dpmods/anime$MagicParticleView;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$MagicParticleView$100000008;)Lcom/dpmods/anime$MagicParticleView;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$MagicParticleView$100000008;->this$0:Lcom/dpmods/anime$MagicParticleView;

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

    .line 453
    nop

    .line 454
    iget-object v0, p0, Lcom/dpmods/anime$MagicParticleView$100000008;->this$0:Lcom/dpmods/anime$MagicParticleView;

    invoke-static {v0}, Lcom/dpmods/anime$MagicParticleView;->access$L1000028(Lcom/dpmods/anime$MagicParticleView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-gez v0, :cond_27

    .line 463
    iget-object v0, p0, Lcom/dpmods/anime$MagicParticleView$100000008;->this$0:Lcom/dpmods/anime$MagicParticleView;

    invoke-virtual {v0}, Lcom/dpmods/anime$MagicParticleView;->invalidate()V

    .line 464
    if-eqz v3, :cond_21

    .line 465
    iget-object v0, p0, Lcom/dpmods/anime$MagicParticleView$100000008;->this$0:Lcom/dpmods/anime$MagicParticleView;

    const/16 v1, 0x10

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/dpmods/anime$MagicParticleView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_26

    .line 467
    :cond_21
    iget-object v0, p0, Lcom/dpmods/anime$MagicParticleView$100000008;->this$0:Lcom/dpmods/anime$MagicParticleView;

    invoke-static {v0, v2}, Lcom/dpmods/anime$MagicParticleView;->access$S1000031(Lcom/dpmods/anime$MagicParticleView;Z)V

    :goto_26
    return-void

    .line 455
    :cond_27
    iget-object v4, p0, Lcom/dpmods/anime$MagicParticleView$100000008;->this$0:Lcom/dpmods/anime$MagicParticleView;

    invoke-static {v4}, Lcom/dpmods/anime$MagicParticleView;->access$L1000028(Lcom/dpmods/anime$MagicParticleView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dpmods/anime$MagicParticleView$Particle;

    .line 456
    invoke-virtual {v4}, Lcom/dpmods/anime$MagicParticleView$Particle;->update()V

    .line 457
    iget v4, v4, Lcom/dpmods/anime$MagicParticleView$Particle;->alpha:I

    if-gtz v4, :cond_44

    .line 458
    iget-object v4, p0, Lcom/dpmods/anime$MagicParticleView$100000008;->this$0:Lcom/dpmods/anime$MagicParticleView;

    invoke-static {v4}, Lcom/dpmods/anime$MagicParticleView;->access$L1000028(Lcom/dpmods/anime$MagicParticleView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_45

    .line 460
    :cond_44
    const/4 v3, 0x1

    .line 454
    :goto_45
    add-int/lit8 v0, v0, -0x1

    goto :goto_f
.end method
