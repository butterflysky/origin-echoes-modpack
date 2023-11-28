#!/bin/sh

export BASEDIR="/creepermc/packwiz"
export PACKWIZ="$BASEDIR/packwiz"
export SERVER_DIR="$BASEDIR/origin_echoes/server"
export CLIENT_DIR="$BASEDIR/origin_echoes/client"

INVOCATION="$(basename $0)"

if [ "$INVOCATION" = "addserver" ] || [ "$INVOCATION" = "addboth" ] ; then
    echo "adding to server..."
    cd $SERVER_DIR
    $PACKWIZ cf add $*
fi

if [ "$INVOCATION" = "addclient" ] || [ "$INVOCATION" = "addboth" ] ; then
    echo "adding to client..."
    cd $CLIENT_DIR
    $PACKWIZ cf add $*
fi

if [ "$INVOCATION" = "addserverm" ] || [ "$INVOCATION" = "addbothm" ] ; then
    echo "adding to server..."
    cd $SERVER_DIR
    $PACKWIZ modrinth add $*
fi

if [ "$INVOCATION" = "addclientm" ] || [ "$INVOCATION" = "addbothm" ] ; then
    echo "adding to client..."
    cd $CLIENT_DIR
    $PACKWIZ modrinth add $*
fi

