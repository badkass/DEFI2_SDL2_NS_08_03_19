program defis;
{$UNITPATH \SDL2}
uses SDL2, SDL2_image;

var
  sdlWindow1: PSDL_Window;
  sdlRenderer: PSDL_Renderer;
  sdlSurface1: PSDL_Surface;
  sdlTexture1: PSDL_Texture;
  sdlTexture2: PSDL_Texture;
  sdlHelico: TSDL_Rect;
  sdlframe: TSDL_Rect;
  exit: BOOLEAN = false;
  sdlKeyboardState: PUInt8;


begin
  //initialisation du video subsystem
  if SDL_Init(SDL_INIT_VIDEO) < 0 then Halt;


    // full set up
    sdlWindow1 := SDL_CreateWindow('Window1', 50, 50, 500, 500, SDL_WINDOW_SHOWN);
    if sdlWindow1 = nil then Halt;

    sdlRenderer := SDL_CreateRenderer(sdlWindow1, 1, SDL_RENDERER_ACCELERATED);
    if(sdlRenderer=nil) then halt;

    //creer une surface à partir d'un fichier
    sdlSurface1:= SDL_LoadBMP('rider.bmp');
    if sdlSurface1 = nil then
        halt;

    //creer une texture à partir d'une surface
    sdlTexture1 := SDL_CreateTextureFromSurface(sdlRenderer, sdlSurface1);
    if sdlTexture1 = nil then
        halt;


    //render texture
    if SDL_RenderCopy(sdlRenderer, sdlTexture1, nil, nil) <> 0 then
        halt;

    // affichage de l'helico

    sdlTexture2 := IMG_LoadTexture( sdlRenderer, 'helicopter.png' );
    if sdlTexture2 = nil then HALT;

    //preparer les rectangles pour l'hélico
    sdlHelico.x := 0;
    sdlHelico.y := 0;
    sdlHelico.w := 128;
    sdlHelico.h := 55;
    sdlframe.x := 0;
    sdlframe.y := 0;
    sdlframe.w := 128;
    sdlframe.h := 55;

   	while exit = false do
   	begin

   		SDL_PumpEvents;
        sdlKeyboardState := SDL_GetKeyboardState(nil);

        // sortie du programme
        if sdlKeyboardState[SDL_SCANCODE_ESCAPE] = 1 then
        exit := true;

        //Mise en place des mouvements par ZQSD (etant configuré en qwerty, il est normal que les commandes soit wasd et non zqsd)
        if sdlKeyboardState[SDL_SCANCODE_W] = 1 then
            sdlHelico.y := sdlHelico.y -1;
        if sdlKeyboardState[SDL_SCANCODE_A] = 1 then
            sdlHelico.x := sdlHelico.x -1;
         if sdlKeyboardState[SDL_SCANCODE_S] = 1 then
            sdlHelico.y := sdlHelico.y +1;  
        if sdlKeyboardState[SDL_SCANCODE_D] = 1 then
            sdlHelico.x := sdlHelico.x +1;

   		sdlframe.x:= sdlframe.x+128;
   		if sdlframe.x > 512 then
   		begin
   		sdlframe.x:=0;
   		end;
   	
   	 // render texture
       SDL_RenderCopy(sdlRenderer, sdlTexture1, nil, nil);
   	   SDL_RenderCopy(sdlRenderer, sdlTexture2, @sdlframe,  @sdlHelico);
       SDL_RenderPresent(sdlRenderer);
       SDL_Delay(1);
       SDL_RenderClear(sdlRenderer);
     end;

      // Nettoyage mémoire
      SDL_DestroyTexture(sdlTexture2);
      SDL_DestroyTexture(sdlTexture1);


      SDL_FreeSurface(sdlSurface1);
      SDL_DestroyRenderer(sdlRenderer);
      SDL_DestroyWindow (sdlWindow1);

      // Fermeture de SDL2
      SDL_Quit;

end.
