.class public final Landroid/telecom/RemoteConference;
.super Ljava/lang/Object;
.source "RemoteConference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/RemoteConference$Callback;
    }
.end annotation


# instance fields
.field private mCallProperties:I

.field private final mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/RemoteConference$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionCapabilities:I

.field private final mConnectionService:Lcom/android/internal/telecom/IConnectionService;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private final mId:Ljava/lang/String;

.field private mState:I

.field private final mUnmodifiableChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnmodifiableConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "connectionService"    # Lcom/android/internal/telecom/IConnectionService;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mCallbacks:Ljava/util/Set;

    .line 57
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    .line 58
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mUnmodifiableChildConnections:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mConferenceableConnections:Ljava/util/List;

    .line 61
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConferenceableConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Landroid/telecom/RemoteConference;->mState:I

    .line 71
    iput-object p1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    .line 73
    return-void
.end method


# virtual methods
.method addConnection(Landroid/telecom/RemoteConnection;)V
    .locals 3
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 111
    iget-object v2, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    iget-object v2, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {p1, p0}, Landroid/telecom/RemoteConnection;->setConference(Landroid/telecom/RemoteConference;)V

    .line 114
    iget-object v2, p0, Landroid/telecom/RemoteConference;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    .line 115
    .local v0, "c":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConference$Callback;->onConnectionAdded(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V

    goto :goto_0

    .line 118
    .end local v0    # "c":Landroid/telecom/RemoteConference$Callback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 194
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->disconnect(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final getCallCapabilities()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/telecom/RemoteConference;->getConnectionCapabilities()I

    move-result v0

    return v0
.end method

.method public final getCallProperties()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Landroid/telecom/RemoteConference;->mCallProperties:I

    return v0
.end method

.method public getConferenceableConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method public final getConnectionCapabilities()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Landroid/telecom/RemoteConference;->mConnectionCapabilities:I

    return v0
.end method

.method public final getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mUnmodifiableChildConnections:Ljava/util/List;

    return-object v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Landroid/telecom/RemoteConference;->mState:I

    return v0
.end method

.method public hold()V
    .locals 2

    .prologue
    .line 224
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->hold(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public merge()V
    .locals 2

    .prologue
    .line 210
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->mergeConference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playDtmfTone(C)V
    .locals 2
    .param p1, "digit"    # C

    .prologue
    .line 242
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IConnectionService;->playDtmfTone(Ljava/lang/String;C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final registerCallback(Landroid/telecom/RemoteConference$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telecom/RemoteConference$Callback;

    .prologue
    .line 266
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 267
    return-void
.end method

.method removeConnection(Landroid/telecom/RemoteConnection;)V
    .locals 3
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 122
    iget-object v2, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 124
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/telecom/RemoteConnection;->setConference(Landroid/telecom/RemoteConference;)V

    .line 125
    iget-object v2, p0, Landroid/telecom/RemoteConference;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    .line 126
    .local v0, "c":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConference$Callback;->onConnectionRemoved(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V

    goto :goto_0

    .line 129
    .end local v0    # "c":Landroid/telecom/RemoteConference$Callback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public separate(Landroid/telecom/RemoteConnection;)V
    .locals 2
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 200
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->splitFromConference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAudioState(Landroid/telecom/AudioState;)V
    .locals 2
    .param p1, "state"    # Landroid/telecom/AudioState;

    .prologue
    .line 256
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IConnectionService;->onAudioStateChanged(Ljava/lang/String;Landroid/telecom/AudioState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method setCallProperties(I)V
    .locals 3
    .param p1, "properties"    # I

    .prologue
    .line 143
    iget v2, p0, Landroid/telecom/RemoteConference;->mCallProperties:I

    if-eq v2, p1, :cond_0

    .line 144
    iput p1, p0, Landroid/telecom/RemoteConference;->mCallProperties:I

    .line 145
    iget-object v2, p0, Landroid/telecom/RemoteConference;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    .line 146
    .local v0, "c":Landroid/telecom/RemoteConference$Callback;
    iget v2, p0, Landroid/telecom/RemoteConference;->mCallProperties:I

    invoke-virtual {v0, p0, v2}, Landroid/telecom/RemoteConference$Callback;->onPropertiesChanged(Landroid/telecom/RemoteConference;I)V

    goto :goto_0

    .line 149
    .end local v0    # "c":Landroid/telecom/RemoteConference$Callback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method setConferenceableConnections(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    iget-object v2, p0, Landroid/telecom/RemoteConference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 154
    iget-object v2, p0, Landroid/telecom/RemoteConference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 155
    iget-object v2, p0, Landroid/telecom/RemoteConference;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    .line 156
    .local v0, "c":Landroid/telecom/RemoteConference$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    invoke-virtual {v0, p0, v2}, Landroid/telecom/RemoteConference$Callback;->onConferenceableConnectionsChanged(Landroid/telecom/RemoteConference;Ljava/util/List;)V

    goto :goto_0

    .line 158
    .end local v0    # "c":Landroid/telecom/RemoteConference$Callback;
    :cond_0
    return-void
.end method

.method setConnectionCapabilities(I)V
    .locals 3
    .param p1, "connectionCapabilities"    # I

    .prologue
    .line 133
    iget v2, p0, Landroid/telecom/RemoteConference;->mConnectionCapabilities:I

    if-eq v2, p1, :cond_0

    .line 134
    iput p1, p0, Landroid/telecom/RemoteConference;->mConnectionCapabilities:I

    .line 135
    iget-object v2, p0, Landroid/telecom/RemoteConference;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    .line 136
    .local v0, "c":Landroid/telecom/RemoteConference$Callback;
    iget v2, p0, Landroid/telecom/RemoteConference;->mConnectionCapabilities:I

    invoke-virtual {v0, p0, v2}, Landroid/telecom/RemoteConference$Callback;->onConnectionCapabilitiesChanged(Landroid/telecom/RemoteConference;I)V

    goto :goto_0

    .line 139
    .end local v0    # "c":Landroid/telecom/RemoteConference$Callback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method setDestroyed()V
    .locals 4

    .prologue
    .line 82
    iget-object v3, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection;

    .line 83
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/telecom/RemoteConnection;->setConference(Landroid/telecom/RemoteConference;)V

    goto :goto_0

    .line 85
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    :cond_0
    iget-object v3, p0, Landroid/telecom/RemoteConference;->mCallbacks:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    .line 86
    .local v0, "c":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v0, p0}, Landroid/telecom/RemoteConference$Callback;->onDestroyed(Landroid/telecom/RemoteConference;)V

    goto :goto_1

    .line 88
    .end local v0    # "c":Landroid/telecom/RemoteConference$Callback;
    :cond_1
    return-void
.end method

.method setDisconnected(Landroid/telecom/DisconnectCause;)V
    .locals 4
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    const/4 v3, 0x6

    .line 162
    iget v2, p0, Landroid/telecom/RemoteConference;->mState:I

    if-eq v2, v3, :cond_0

    .line 163
    iput-object p1, p0, Landroid/telecom/RemoteConference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 164
    invoke-virtual {p0, v3}, Landroid/telecom/RemoteConference;->setState(I)V

    .line 165
    iget-object v2, p0, Landroid/telecom/RemoteConference;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    .line 166
    .local v0, "c":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConference$Callback;->onDisconnected(Landroid/telecom/RemoteConference;Landroid/telecom/DisconnectCause;)V

    goto :goto_0

    .line 169
    .end local v0    # "c":Landroid/telecom/RemoteConference$Callback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method setState(I)V
    .locals 7
    .param p1, "newState"    # I

    .prologue
    .line 92
    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    const/4 v3, 0x6

    if-eq p1, v3, :cond_1

    .line 95
    const-string v3, "Unsupported state transition for Conference call."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    :cond_0
    return-void

    .line 100
    :cond_1
    iget v3, p0, Landroid/telecom/RemoteConference;->mState:I

    if-eq v3, p1, :cond_0

    .line 101
    iget v2, p0, Landroid/telecom/RemoteConference;->mState:I

    .line 102
    .local v2, "oldState":I
    iput p1, p0, Landroid/telecom/RemoteConference;->mState:I

    .line 103
    iget-object v3, p0, Landroid/telecom/RemoteConference;->mCallbacks:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    .line 104
    .local v0, "c":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v0, p0, v2, p1}, Landroid/telecom/RemoteConference$Callback;->onStateChanged(Landroid/telecom/RemoteConference;II)V

    goto :goto_0
.end method

.method public stopDtmfTone()V
    .locals 2

    .prologue
    .line 249
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->stopDtmfTone(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public swap()V
    .locals 2

    .prologue
    .line 217
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->swapConference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unhold()V
    .locals 2

    .prologue
    .line 231
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->unhold(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final unregisterCallback(Landroid/telecom/RemoteConference$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telecom/RemoteConference$Callback;

    .prologue
    .line 270
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 271
    return-void
.end method
