.class abstract Landroid/view/ViewDebug$PropertyInfo;
.super Ljava/lang/Object;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PropertyInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/annotation/Annotation;",
        "R:",
        "Ljava/lang/reflect/AccessibleObject;",
        ":",
        "Ljava/lang/reflect/Member;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public entrySuffix:Ljava/lang/String;

.field public final member:Ljava/lang/reflect/AccessibleObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field public final property:Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final returnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public valueSuffix:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/AccessibleObject;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;TR;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 348
    .local p0, "this":Landroid/view/ViewDebug$PropertyInfo;, "Landroid/view/ViewDebug$PropertyInfo<TT;TR;>;"
    .local p1, "property":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "member":Ljava/lang/reflect/AccessibleObject;, "TR;"
    .local p3, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    const-string v0, ""

    iput-object v0, p0, Landroid/view/ViewDebug$PropertyInfo;->entrySuffix:Ljava/lang/String;

    .line 346
    iput-object v0, p0, Landroid/view/ViewDebug$PropertyInfo;->valueSuffix:Ljava/lang/String;

    .line 349
    iput-object p2, p0, Landroid/view/ViewDebug$PropertyInfo;->member:Ljava/lang/reflect/AccessibleObject;

    .line 350
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewDebug$PropertyInfo;->name:Ljava/lang/String;

    .line 351
    invoke-virtual {p2, p1}, Ljava/lang/reflect/AccessibleObject;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewDebug$PropertyInfo;->property:Ljava/lang/annotation/Annotation;

    .line 352
    iput-object p3, p0, Landroid/view/ViewDebug$PropertyInfo;->returnType:Ljava/lang/Class;

    .line 353
    return-void
.end method

.method static forField(Ljava/lang/reflect/Field;Ljava/lang/Class;)Landroid/view/ViewDebug$PropertyInfo;
    .registers 3
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/view/ViewDebug$PropertyInfo<",
            "TT;*>;"
        }
    .end annotation

    .line 380
    .local p1, "property":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 381
    const/4 v0, 0x0

    return-object v0

    .line 383
    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 384
    new-instance v0, Landroid/view/ViewDebug$FieldPI;

    invoke-direct {v0, p0, p1}, Landroid/view/ViewDebug$FieldPI;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Class;)V

    return-object v0
.end method

.method static forMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;)Landroid/view/ViewDebug$PropertyInfo;
    .registers 5
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/view/ViewDebug$PropertyInfo<",
            "TT;*>;"
        }
    .end annotation

    .line 361
    .local p1, "property":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Void;

    if-eq v1, v2, :cond_2b

    .line 362
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1
    :try_end_e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_e} :catch_2c

    if-eqz v1, :cond_11

    goto :goto_2b

    .line 367
    :cond_11
    nop

    .line 368
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 369
    return-object v0

    .line 371
    :cond_19
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 373
    new-instance v0, Landroid/view/ViewDebug$MethodPI;

    invoke-direct {v0, p0, p1}, Landroid/view/ViewDebug$MethodPI;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    .line 374
    .local v0, "info":Landroid/view/ViewDebug$PropertyInfo;
    const-string v1, "()"

    iput-object v1, v0, Landroid/view/ViewDebug$PropertyInfo;->entrySuffix:Ljava/lang/String;

    .line 375
    const-string v1, ";"

    iput-object v1, v0, Landroid/view/ViewDebug$PropertyInfo;->valueSuffix:Ljava/lang/String;

    .line 376
    return-object v0

    .line 363
    .end local v0    # "info":Landroid/view/ViewDebug$PropertyInfo;
    :cond_2b
    :goto_2b
    return-object v0

    .line 365
    :catch_2c
    move-exception v1

    .line 366
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    return-object v0
.end method


# virtual methods
.method public abstract invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
