.class Landroid/os/StrictMode$5;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Ldalvik/system/BlockGuard$VmPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPathAccess(Ljava/lang/String;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;

    .line 1912
    if-nez p1, :cond_3

    return-void

    .line 1915
    :cond_3
    const-string v0, "/data/user/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 1916
    const-string v0, "/data/media/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 1917
    const-string v0, "/data/system_ce/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 1918
    const-string v0, "/data/misc_ce/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 1919
    const-string v0, "/data/vendor_ce/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 1920
    const-string v0, "/storage/emulated/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_41

    .line 1931
    :cond_34
    const-string v0, "/data/data/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1932
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/StrictMode;->-$$Nest$smonCredentialProtectedPathAccess(Ljava/lang/String;I)V

    goto :goto_68

    .line 1921
    :cond_41
    :goto_41
    const/16 v0, 0x2f

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1922
    .local v1, "second":I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1923
    .local v2, "third":I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 1924
    .local v0, "fourth":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_58

    return-void

    .line 1927
    :cond_58
    add-int/lit8 v3, v2, 0x1

    :try_start_5a
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1928
    .local v3, "userId":I
    invoke-static {p1, v3}, Landroid/os/StrictMode;->-$$Nest$smonCredentialProtectedPathAccess(Ljava/lang/String;I)V
    :try_end_65
    .catch Ljava/lang/NumberFormatException; {:try_start_5a .. :try_end_65} :catch_66

    .line 1930
    .end local v3    # "userId":I
    goto :goto_67

    .line 1929
    :catch_66
    move-exception v3

    .line 1931
    .end local v0    # "fourth":I
    .end local v1    # "second":I
    .end local v2    # "third":I
    :cond_67
    :goto_67
    nop

    .line 1934
    :goto_68
    return-void
.end method
