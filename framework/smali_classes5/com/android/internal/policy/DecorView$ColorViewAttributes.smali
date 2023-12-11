.class public Lcom/android/internal/policy/DecorView$ColorViewAttributes;
.super Ljava/lang/Object;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorViewAttributes"
.end annotation


# instance fields
.field final horizontalGravity:I

.field final id:I

.field final insetsType:I

.field final seascapeGravity:I

.field final transitionName:Ljava/lang/String;

.field final translucentFlag:I

.field final verticalGravity:I


# direct methods
.method private constructor <init>(IIIILjava/lang/String;II)V
    .registers 8
    .param p1, "translucentFlag"    # I
    .param p2, "verticalGravity"    # I
    .param p3, "horizontalGravity"    # I
    .param p4, "seascapeGravity"    # I
    .param p5, "transitionName"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "insetsType"    # I

    .line 3737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3738
    iput p6, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->id:I

    .line 3739
    iput p1, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->translucentFlag:I

    .line 3740
    iput p2, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->verticalGravity:I

    .line 3741
    iput p3, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->horizontalGravity:I

    .line 3742
    iput p4, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->seascapeGravity:I

    .line 3743
    iput-object p5, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->transitionName:Ljava/lang/String;

    .line 3744
    iput p7, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->insetsType:I

    .line 3745
    return-void
.end method

.method synthetic constructor <init>(IIIILjava/lang/String;IILcom/android/internal/policy/DecorView$ColorViewAttributes-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIILjava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public isPresent(ZIZ)Z
    .registers 5
    .param p1, "requestedVisible"    # Z
    .param p2, "windowFlags"    # I
    .param p3, "force"    # Z

    .line 3748
    if-eqz p1, :cond_b

    const/high16 v0, -0x80000000

    and-int/2addr v0, p2

    if-nez v0, :cond_9

    if-eqz p3, :cond_b

    :cond_9
    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isVisible(IIIZ)Z
    .registers 8
    .param p1, "requestedVisibleTypes"    # I
    .param p2, "color"    # I
    .param p3, "windowFlags"    # I
    .param p4, "force"    # Z

    .line 3760
    iget v0, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->insetsType:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 3761
    .local v0, "requestedVisible":Z
    :goto_8
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isPresent(ZIZ)Z

    move-result v1

    .line 3762
    .local v1, "present":Z
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(ZIIZ)Z

    move-result v2

    return v2
.end method

.method public isVisible(ZIIZ)Z
    .registers 6
    .param p1, "present"    # Z
    .param p2, "color"    # I
    .param p3, "windowFlags"    # I
    .param p4, "force"    # Z

    .line 3753
    if-eqz p1, :cond_11

    .line 3754
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->translucentFlag:I

    and-int/2addr v0, p3

    if-eqz v0, :cond_f

    if-eqz p4, :cond_11

    :cond_f
    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 3753
    :goto_12
    return v0
.end method
