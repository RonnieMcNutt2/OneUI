.class Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;
.super Ljava/lang/Object;
.source "VZWAVSLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AvsInstance"
.end annotation


# instance fields
.field final authority:Ljava/lang/String;

.field final contentProviderUri:Landroid/net/Uri;

.field final fingerprints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field isAvailable:Z

.field final name:Ljava/lang/String;

.field final permissions:[Ljava/lang/String;


# direct methods
.method varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .param p4, "perms"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 201
    .local p3, "fingerprints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;->isAvailable:Z

    .line 202
    iput-object p1, p0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;->name:Ljava/lang/String;

    .line 203
    iput-object p2, p0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;->authority:Ljava/lang/String;

    .line 204
    invoke-static {}, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary;->-$$Nest$sfgetEN()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "content://%s/apis"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;->contentProviderUri:Landroid/net/Uri;

    .line 205
    iput-object p3, p0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;->fingerprints:Ljava/util/List;

    .line 206
    if-nez p4, :cond_25

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_26

    :cond_25
    move-object v0, p4

    :goto_26
    iput-object v0, p0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;->permissions:[Ljava/lang/String;

    .line 208
    return-void
.end method
