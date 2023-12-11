.class public Landroid/telecom/Voicemail$Builder;
.super Ljava/lang/Object;
.source "Voicemail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Voicemail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBuilderDuration:Ljava/lang/Long;

.field private mBuilderHasContent:Z

.field private mBuilderId:Ljava/lang/Long;

.field private mBuilderIsRead:Ljava/lang/Boolean;

.field private mBuilderNumber:Ljava/lang/String;

.field private mBuilderPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private mBuilderSourceData:Ljava/lang/String;

.field private mBuilderSourcePackage:Ljava/lang/String;

.field private mBuilderTimestamp:Ljava/lang/Long;

.field private mBuilderTranscription:Ljava/lang/String;

.field private mBuilderUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/Voicemail$Builder-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/telecom/Voicemail$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/telecom/Voicemail;
    .registers 15

    .line 155
    iget-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderId:Ljava/lang/Long;

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_b
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderId:Ljava/lang/Long;

    .line 156
    iget-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderTimestamp:Ljava/lang/Long;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_19

    move-wide v3, v1

    goto :goto_1d

    :cond_19
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_1d
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderTimestamp:Ljava/lang/Long;

    .line 157
    iget-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderDuration:Ljava/lang/Long;

    if-nez v0, :cond_28

    goto :goto_2c

    :cond_28
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_2c
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderDuration:Ljava/lang/Long;

    .line 158
    iget-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderIsRead:Ljava/lang/Boolean;

    if-nez v0, :cond_38

    const/4 v0, 0x0

    goto :goto_3c

    :cond_38
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_3c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderIsRead:Ljava/lang/Boolean;

    .line 159
    new-instance v0, Landroid/telecom/Voicemail;

    iget-object v2, p0, Landroid/telecom/Voicemail$Builder;->mBuilderTimestamp:Ljava/lang/Long;

    iget-object v3, p0, Landroid/telecom/Voicemail$Builder;->mBuilderNumber:Ljava/lang/String;

    iget-object v4, p0, Landroid/telecom/Voicemail$Builder;->mBuilderPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    iget-object v5, p0, Landroid/telecom/Voicemail$Builder;->mBuilderId:Ljava/lang/Long;

    iget-object v6, p0, Landroid/telecom/Voicemail$Builder;->mBuilderDuration:Ljava/lang/Long;

    iget-object v7, p0, Landroid/telecom/Voicemail$Builder;->mBuilderSourcePackage:Ljava/lang/String;

    iget-object v8, p0, Landroid/telecom/Voicemail$Builder;->mBuilderSourceData:Ljava/lang/String;

    iget-object v9, p0, Landroid/telecom/Voicemail$Builder;->mBuilderUri:Landroid/net/Uri;

    iget-object v10, p0, Landroid/telecom/Voicemail$Builder;->mBuilderIsRead:Ljava/lang/Boolean;

    iget-boolean v1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderHasContent:Z

    .line 161
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-object v12, p0, Landroid/telecom/Voicemail$Builder;->mBuilderTranscription:Ljava/lang/String;

    const/4 v13, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Landroid/telecom/Voicemail;-><init>(Ljava/lang/Long;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Landroid/telecom/Voicemail-IA;)V

    .line 159
    return-object v0
.end method

.method public setDuration(J)Landroid/telecom/Voicemail$Builder;
    .registers 4
    .param p1, "duration"    # J

    .line 120
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderDuration:Ljava/lang/Long;

    .line 121
    return-object p0
.end method

.method public setHasContent(Z)Landroid/telecom/Voicemail$Builder;
    .registers 2
    .param p1, "hasContent"    # Z

    .line 145
    iput-boolean p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderHasContent:Z

    .line 146
    return-object p0
.end method

.method public setId(J)Landroid/telecom/Voicemail$Builder;
    .registers 4
    .param p1, "id"    # J

    .line 115
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderId:Ljava/lang/Long;

    .line 116
    return-object p0
.end method

.method public setIsRead(Z)Landroid/telecom/Voicemail$Builder;
    .registers 3
    .param p1, "isRead"    # Z

    .line 140
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderIsRead:Ljava/lang/Boolean;

    .line 141
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .registers 2
    .param p1, "number"    # Ljava/lang/String;

    .line 100
    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderNumber:Ljava/lang/String;

    .line 101
    return-object p0
.end method

.method public setPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/Voicemail$Builder;
    .registers 2
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .line 110
    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 111
    return-object p0
.end method

.method public setSourceData(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .registers 2
    .param p1, "sourceData"    # Ljava/lang/String;

    .line 130
    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderSourceData:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public setSourcePackage(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .registers 2
    .param p1, "sourcePackage"    # Ljava/lang/String;

    .line 125
    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderSourcePackage:Ljava/lang/String;

    .line 126
    return-object p0
.end method

.method public setTimestamp(J)Landroid/telecom/Voicemail$Builder;
    .registers 4
    .param p1, "timestamp"    # J

    .line 105
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderTimestamp:Ljava/lang/Long;

    .line 106
    return-object p0
.end method

.method public setTranscription(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .registers 2
    .param p1, "transcription"    # Ljava/lang/String;

    .line 150
    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderTranscription:Ljava/lang/String;

    .line 151
    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Landroid/telecom/Voicemail$Builder;
    .registers 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 135
    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderUri:Landroid/net/Uri;

    .line 136
    return-object p0
.end method
