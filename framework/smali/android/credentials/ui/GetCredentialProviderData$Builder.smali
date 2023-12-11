.class public final Landroid/credentials/ui/GetCredentialProviderData$Builder;
.super Ljava/lang/Object;
.source "GetCredentialProviderData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/ui/GetCredentialProviderData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mActionChips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/credentials/ui/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthenticationEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/credentials/ui/AuthenticationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCredentialEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/credentials/ui/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderFlattenedComponentName:Ljava/lang/String;

.field private mRemoteEntry:Landroid/credentials/ui/Entry;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "providerFlattenedComponentName"    # Ljava/lang/String;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/credentials/ui/GetCredentialProviderData$Builder;->mCredentialEntries:Ljava/util/List;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/credentials/ui/GetCredentialProviderData$Builder;->mActionChips:Ljava/util/List;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/credentials/ui/GetCredentialProviderData$Builder;->mAuthenticationEntries:Ljava/util/List;

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/credentials/ui/GetCredentialProviderData$Builder;->mRemoteEntry:Landroid/credentials/ui/Entry;

    .line 142
    iput-object p1, p0, Landroid/credentials/ui/GetCredentialProviderData$Builder;->mProviderFlattenedComponentName:Ljava/lang/String;

    .line 143
    return-void
.end method


# virtual methods
.method public build()Landroid/credentials/ui/GetCredentialProviderData;
    .registers 8

    .line 177
    new-instance v6, Landroid/credentials/ui/GetCredentialProviderData;

    iget-object v1, p0, Landroid/credentials/ui/GetCredentialProviderData$Builder;->mProviderFlattenedComponentName:Ljava/lang/String;

    iget-object v2, p0, Landroid/credentials/ui/GetCredentialProviderData$Builder;->mCredentialEntries:Ljava/util/List;

    iget-object v3, p0, Landroid/credentials/ui/GetCredentialProviderData$Builder;->mActionChips:Ljava/util/List;

    iget-object v4, p0, Landroid/credentials/ui/GetCredentialProviderData$Builder;->mAuthenticationEntries:Ljava/util/List;

    iget-object v5, p0, Landroid/credentials/ui/GetCredentialProviderData$Builder;->mRemoteEntry:Landroid/credentials/ui/Entry;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/credentials/ui/GetCredentialProviderData;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/credentials/ui/Entry;)V

    return-object v6
.end method

.method public setActionChips(Ljava/util/List;)Landroid/credentials/ui/GetCredentialProviderData$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/ui/Entry;",
            ">;)",
            "Landroid/credentials/ui/GetCredentialProviderData$Builder;"
        }
    .end annotation

    .line 155
    .local p1, "actionChips":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/ui/Entry;>;"
    iput-object p1, p0, Landroid/credentials/ui/GetCredentialProviderData$Builder;->mActionChips:Ljava/util/List;

    .line 156
    return-object p0
.end method

.method public setAuthenticationEntries(Ljava/util/List;)Landroid/credentials/ui/GetCredentialProviderData$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/ui/AuthenticationEntry;",
            ">;)",
            "Landroid/credentials/ui/GetCredentialProviderData$Builder;"
        }
    .end annotation

    .line 163
    .local p1, "authenticationEntry":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/ui/AuthenticationEntry;>;"
    iput-object p1, p0, Landroid/credentials/ui/GetCredentialProviderData$Builder;->mAuthenticationEntries:Ljava/util/List;

    .line 164
    return-object p0
.end method

.method public setCredentialEntries(Ljava/util/List;)Landroid/credentials/ui/GetCredentialProviderData$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/ui/Entry;",
            ">;)",
            "Landroid/credentials/ui/GetCredentialProviderData$Builder;"
        }
    .end annotation

    .line 148
    .local p1, "credentialEntries":Ljava/util/List;, "Ljava/util/List<Landroid/credentials/ui/Entry;>;"
    iput-object p1, p0, Landroid/credentials/ui/GetCredentialProviderData$Builder;->mCredentialEntries:Ljava/util/List;

    .line 149
    return-object p0
.end method

.method public setRemoteEntry(Landroid/credentials/ui/Entry;)Landroid/credentials/ui/GetCredentialProviderData$Builder;
    .registers 2
    .param p1, "remoteEntry"    # Landroid/credentials/ui/Entry;

    .line 170
    iput-object p1, p0, Landroid/credentials/ui/GetCredentialProviderData$Builder;->mRemoteEntry:Landroid/credentials/ui/Entry;

    .line 171
    return-object p0
.end method
