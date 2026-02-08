.class Lcom/dpmods/anime$SparkleBorderView$Sparkle;
.super Ljava/lang/Object;
.source "anime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$SparkleBorderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "Sparkle"
.end annotation


# instance fields
.field alpha:I

.field growing:Z

.field size:F

.field private final this$0:Lcom/dpmods/anime$SparkleBorderView;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lcom/dpmods/anime$SparkleBorderView;FF)V
    .registers 5

    .line 945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$SparkleBorderView$Sparkle;->this$0:Lcom/dpmods/anime$SparkleBorderView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dpmods/anime$SparkleBorderView$Sparkle;->growing:Z

    iput p2, p0, Lcom/dpmods/anime$SparkleBorderView$Sparkle;->x:F

    iput p3, p0, Lcom/dpmods/anime$SparkleBorderView$Sparkle;->y:F

    invoke-static {p1}, Lcom/dpmods/anime$SparkleBorderView;->access$0(Lcom/dpmods/anime$SparkleBorderView;)Lcom/dpmods/anime;

    move-result-object p2

    const/high16 p3, 0x40000000  # 2.0f

    invoke-static {p2, p3}, Lcom/dpmods/anime;->access$1000076(Lcom/dpmods/anime;F)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1}, Lcom/dpmods/anime$SparkleBorderView;->access$L1000094(Lcom/dpmods/anime$SparkleBorderView;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    invoke-static {p1}, Lcom/dpmods/anime$SparkleBorderView;->access$0(Lcom/dpmods/anime$SparkleBorderView;)Lcom/dpmods/anime;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/dpmods/anime;->access$1000076(Lcom/dpmods/anime;F)I

    move-result p1

    int-to-float p1, p1

    mul-float v0, v0, p1

    add-float/2addr p2, v0

    iput p2, p0, Lcom/dpmods/anime$SparkleBorderView$Sparkle;->size:F

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$SparkleBorderView$Sparkle;)Lcom/dpmods/anime$SparkleBorderView;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$SparkleBorderView$Sparkle;->this$0:Lcom/dpmods/anime$SparkleBorderView;

    return-object p0
.end method


# virtual methods
.method update()Z
    .registers 4

    .line 947
    iget-boolean v0, p0, Lcom/dpmods/anime$SparkleBorderView$Sparkle;->growing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/dpmods/anime$SparkleBorderView$Sparkle;->alpha:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/dpmods/anime$SparkleBorderView$Sparkle;->alpha:I

    const/16 v2, 0xff

    if-lt v0, v2, :cond_1e

    iput v2, p0, Lcom/dpmods/anime$SparkleBorderView$Sparkle;->alpha:I

    iput-boolean v1, p0, Lcom/dpmods/anime$SparkleBorderView$Sparkle;->growing:Z

    goto :goto_1e

    .line 948
    :cond_14
    iget v0, p0, Lcom/dpmods/anime$SparkleBorderView$Sparkle;->alpha:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/dpmods/anime$SparkleBorderView$Sparkle;->alpha:I

    if-gtz v0, :cond_1e

    const/4 v0, 0x1

    return v0

    .line 949
    :cond_1e
    :goto_1e
    return v1
.end method
