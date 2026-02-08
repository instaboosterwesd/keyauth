.class Lcom/dpmods/anime$SparkleBorderView$100000019;
.super Ljava/lang/Object;
.source "anime.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$SparkleBorderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000019"
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime$SparkleBorderView;


# direct methods
.method constructor <init>(Lcom/dpmods/anime$SparkleBorderView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$SparkleBorderView$100000019;->this$0:Lcom/dpmods/anime$SparkleBorderView;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$SparkleBorderView$100000019;)Lcom/dpmods/anime$SparkleBorderView;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$SparkleBorderView$100000019;->this$0:Lcom/dpmods/anime$SparkleBorderView;

    return-object p0
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/ValueAnimator;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 831
    iget-object p1, p0, Lcom/dpmods/anime$SparkleBorderView$100000019;->this$0:Lcom/dpmods/anime$SparkleBorderView;

    invoke-static {p1}, Lcom/dpmods/anime$SparkleBorderView;->access$1000094(Lcom/dpmods/anime$SparkleBorderView;)V

    iget-object p1, p0, Lcom/dpmods/anime$SparkleBorderView$100000019;->this$0:Lcom/dpmods/anime$SparkleBorderView;

    invoke-static {p1}, Lcom/dpmods/anime$SparkleBorderView;->access$1000095(Lcom/dpmods/anime$SparkleBorderView;)V

    iget-object p1, p0, Lcom/dpmods/anime$SparkleBorderView$100000019;->this$0:Lcom/dpmods/anime$SparkleBorderView;

    invoke-virtual {p1}, Lcom/dpmods/anime$SparkleBorderView;->invalidate()V

    return-void
.end method
