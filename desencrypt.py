import pygame
import sys
import time

pygame.init()

width, height = 1280, 1024
screen = pygame.display.set_mode((width, height))

pygame.display.set_caption('¡Felicidades!')
image_path = './felicidades.png'
image = pygame.image.load(image_path)

# Cargar una fuente
font = pygame.font.Font(None, 36)  # Usa la fuente predeterminada con tamaño 36
text = font.render("Tus archivos han sido desencriptados felicidades", True, (0, 0, 0))  # Texto negro

running = True
start_time = pygame.time.get_ticks()  # Obtén el tiempo actual

while running:
    current_time = pygame.time.get_ticks()  # Obtén el tiempo actual
    elapsed_time = current_time - start_time  # Calcula el tiempo transcurrido

    if elapsed_time >= 3000:  # Si han pasado 5 segundos
        running = False  # Cambia el estado de running a False para salir del bucle

    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False

    screen.fill((255, 255, 255))
    x, y = 0, 100
    screen.blit(image, (x, y))
    # Dibujar el texto
    screen.blit(text, (x + 630, y + 50))  # Ajusta las coordenadas según sea necesario
    pygame.display.flip()

pygame.quit()
sys.exit()
