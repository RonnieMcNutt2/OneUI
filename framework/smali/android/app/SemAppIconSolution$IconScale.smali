.class Landroid/app/SemAppIconSolution$IconScale;
.super Ljava/lang/Object;
.source "SemAppIconSolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SemAppIconSolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconScale"
.end annotation


# instance fields
.field private mAlpha:I

.field private mIsCrop:Z

.field private mScale:F

.field final synthetic this$0:Landroid/app/SemAppIconSolution;


# direct methods
.method static bridge synthetic -$$Nest$fgetmScale(Landroid/app/SemAppIconSolution$IconScale;)F
    .registers 1

    iget p0, p0, Landroid/app/SemAppIconSolution$IconScale;->mScale:F

    return p0
.end method

.method public constructor <init>(Landroid/app/SemAppIconSolution;IFZ)V
    .registers 5
    .param p2, "alpha"    # I
    .param p3, "scale"    # F
    .param p4, "isCrop"    # Z

    .line 510
    iput-object p1, p0, Landroid/app/SemAppIconSolution$IconScale;->this$0:Landroid/app/SemAppIconSolution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    iput p2, p0, Landroid/app/SemAppIconSolution$IconScale;->mAlpha:I

    .line 512
    iput p3, p0, Landroid/app/SemAppIconSolution$IconScale;->mScale:F

    .line 513
    iput-boolean p4, p0, Landroid/app/SemAppIconSolution$IconScale;->mIsCrop:Z

    .line 514
    return-void
.end method


# virtual methods
.method public getAlpha()I
    .registers 2

    .line 516
    iget v0, p0, Landroid/app/SemAppIconSolution$IconScale;->mAlpha:I

    return v0
.end method

.method public getScale()F
    .registers 2

    .line 519
    iget v0, p0, Landroid/app/SemAppIconSolution$IconScale;->mScale:F

    return v0
.end method

.method public isCrop()Z
    .registers 2

    .line 522
    iget-boolean v0, p0, Landroid/app/SemAppIconSolution$IconScale;->mIsCrop:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IconScale[alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/SemAppIconSolution$IconScale;->mAlpha:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/SemAppIconSolution$IconScale;->mScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCrop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/SemAppIconSolution$IconScale;->mIsCrop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
