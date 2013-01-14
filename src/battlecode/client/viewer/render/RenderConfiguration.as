﻿package battlecode.client.viewer.render {

    public class RenderConfiguration {
        public static const GRID_SIZE:Number = 32.0;
        private static var scale:Number = 1.0;

        private static var broadcast:Boolean = false;
        private static var discrete:Boolean = false;
        private static var energon:Boolean = true;
        private static var gridlines:Boolean = false;
        private static var transfers:Boolean = false;
        private static var explosions:Boolean = true;
        private static var rangeHatch:Boolean = false;
        private static var ground:Boolean = true;
        private static var air:Boolean = true;
        private static var convexHulls:Boolean = true;
        private static var flux:Boolean = true;
        private static var tournament:Boolean = true;

        public function RenderConfiguration() {
        }

        public static function setScalingFactor(val:Number):void {
            scale = val;
        }

        public static function getScalingFactor():Number {
            return scale;
        }

        public static function getGridSize():Number {
            return GRID_SIZE * scale;
        }

        public static function setTournamentMode(val:Boolean):void {
            tournament = val;
        }

        public static function showBroadcast():Boolean {
            return broadcast;
        }

        public static function showDiscrete():Boolean {
            return discrete;
        }

        public static function showEnergon():Boolean {
            return energon;
        }

        public static function showGridlines():Boolean {
            return gridlines;
        }

        public static function showTransfers():Boolean {
            return transfers;
        }

        public static function showExplosions():Boolean {
            return explosions;
        }

        public static function showRangeHatch():Boolean {
            return rangeHatch;
        }

        public static function showGround():Boolean {
            return ground;
        }

        public static function showAir():Boolean {
            return air;
        }

        public static function showConvexHulls():Boolean {
            return convexHulls;
        }

        public static function showFlux():Boolean {
            return flux;
        }

        public static function isTournament():Boolean {
            return tournament;
        }

        public static function toggleBroadcast():void {
            broadcast = !broadcast;
        }

        public static function toggleDiscrete():void {
            discrete = !discrete;
        }

        public static function toggleEnergon():void {
            energon = !energon;
        }

        public static function toggleGridlines():void {
            gridlines = !gridlines;
        }

        public static function toggleTransfers():void {
            transfers = !transfers;
        }

        public static function toggleExplosions():void {
            explosions = !explosions;
        }

        public static function toggleRangeHatch():void {
            rangeHatch = !rangeHatch;
        }

        public static function toggleConvexHulls():void {
            convexHulls = !convexHulls;
        }

        public static function toggleFlux():void {
            flux = !flux;
        }

        public static function toggleDrawHeight():void {
            if (!air && !ground) {
                ground = true;
                air = true;
            } else if (ground && !air) {
                ground = false;
                air = true;
            } else if (air && !ground) {
                ground = false;
                air = false;
            } else {
                ground = true;
                air = false;
            }
        }

    }

}