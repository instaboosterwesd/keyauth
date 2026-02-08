.class Lcom/dpmods/anime$ThemeView$Particle;
.super Ljava/lang/Object;
.source "anime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$ThemeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "Particle"
.end annotation


# instance fields
.field alpha:I

.field angle:F

.field size:F

.field speed:F

.field private final this$0:Lcom/dpmods/anime$ThemeView;

.field type:I

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Lcom/dpmods/anime$ThemeView;)V
    .registers 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$ThemeView$Particle;->this$0:Lcom/dpmods/anime$ThemeView;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$ThemeView$Particle;)Lcom/dpmods/anime$ThemeView;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$ThemeView$Particle;->this$0:Lcom/dpmods/anime$ThemeView;

    return-object p0
.end method
