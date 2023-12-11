.class public final Landroid/view/autofill/VirtualViewFillInfo;
.super Ljava/lang/Object;
.source "VirtualViewFillInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/VirtualViewFillInfo$Builder;
    }
.end annotation


# instance fields
.field private mAutofillHints:[Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$smdefaultAutofillHints()[Ljava/lang/String;
    .registers 1

    invoke-static {}, Landroid/view/autofill/VirtualViewFillInfo;->defaultAutofillHints()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>([Ljava/lang/String;)V
    .registers 5
    .param p1, "autofillHints"    # [Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/view/autofill/VirtualViewFillInfo;->mAutofillHints:[Ljava/lang/String;

    .line 64
    const-class v0, Landroid/annotation/SuppressLint;

    const-string/jumbo v1, "value"

    const-string v2, "NullableCollection"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    return-void
.end method

.method private static defaultAutofillHints()[Ljava/lang/String;
    .registers 1

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getAutofillHints()[Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/view/autofill/VirtualViewFillInfo;->mAutofillHints:[Ljava/lang/String;

    return-object v0
.end method
